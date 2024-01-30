import Foundation
var barriers: [Shape] = []
var targets: [Shape] = []
let ball = OvalShape(width: 150, height: 150)

let funnelPoints = [
    Point(x: 0, y: 50),
    Point(x: 80, y: 50),
    Point(x: 60, y: 0),
    Point(x: 20, y: 0)
]
let funnel = PolygonShape(points: funnelPoints)


func addTarget(at position: Point){
    let targetPoints = [
        Point(x: 10, y: 0),
        Point(x: 0, y: 10),
        Point(x: 10, y: 20),
        Point(x: 20, y: 10)
    ]
    
    let target = PolygonShape(points: targetPoints)
    targets.append(target)
    target.position = position
    target.hasPhysics = true
    target.isImmobile = true
    target.isImpermeable = false
    target.fillColor = .yellow
    target.name = "target"
    scene.add(target)
    target.isDraggable = false
}
fileprivate func setupBall() {
    
    ball.position =  Point(x: 40, y: 40)
    scene.add(ball)
    ball.hasPhysics = true
    ball.fillColor = .blue
    ball.onCollision = ballCollided(whit:)
    ball.isDraggable = false
    
    scene.trackShape(ball)
    ball.onExitedScene = ballExitedScene
    
    ball.onTapped = resetGame
    
    ball.bounciness = 0.6
}

fileprivate func addBarrier(at position: Point, width: Double, height: Double,angle: Double) {
    let barrierPoints = [
        Point(x: 0, y: 0),
        Point(x: 0, y: height),
        Point(x: width, y: height),
        Point(x: width, y: 0)
    ]
    
    let barrier = PolygonShape(points: barrierPoints)
    barriers.append(barrier)
    barrier.position = position
    barrier.hasPhysics = true
    scene.add(barrier)
    barrier.isImmobile = true
    barrier.fillColor = .brown
    barrier.angle = angle
}

fileprivate func setupFunnel() {
    
    funnel.position = Point(x: 200, y: scene.height - 25)
    scene.add(funnel)
    funnel.onTapped = dropBall
    funnel.fillColor = .gray
    funnel.isDraggable = false
}

func setup() {
    //add a circle to scene
    setupBall()
    
    //Add an obstacle to scene
    addBarrier(at: Point(x: 200, y: 150), width: 80, height: 25, angle: 0.1)
    addBarrier(at: Point(x: 100, y: 150), width: 30, height: 15, angle: -0.2)
    addBarrier(at: Point(x: 300, y: 150), width: 100, height: 25, angle: 0.03)
    //Add a funnel to scene
    setupFunnel()
    
    //Add a objetive to scene
    addTarget(at: Point(x: 133, y: 614))
    addTarget(at: Point(x: 111, y: 474))
    addTarget(at: Point(x: 256, y: 280))
    addTarget(at: Point(x: 151, y: 242))
    addTarget(at: Point(x: 165, y: 40))
    
    //Reset Game
    resetGame()
    
    //Print the position of the ball
    scene.onShapeMoved = printPosition(of:)
}

func dropBall(){
    ball.position = funnel.position
    ball.stopAllMotion()
    for barrier in barriers {
        barrier.isDraggable =  false
    }
    for target in targets{
        target.fillColor = .yellow
    }
}

func ballExitedScene(){
    var hitTargets = 0
    for target in targets {
        if target.fillColor == .green {
            hitTargets += 1
        }
    }
    if hitTargets == targets.count{
        scene.presentAlert(text: "¡You Win!", completion: alertDismissed)
    }
    for barrier in barriers {
        barrier.isDraggable = true
    }
    
}
func resetGame(){
    //restore the game when the ball is bellow the scene
    //this unlock the barriers
    ball.position = Point(x: 0, y: -80)
}

func ballCollided(whit otherShape: Shape){
    if otherShape.name != "target"{ return }
    otherShape.fillColor = .green
}

func printPosition(of shape: Shape){
    print(shape.position)
}

func alertDismissed(){
    
}
