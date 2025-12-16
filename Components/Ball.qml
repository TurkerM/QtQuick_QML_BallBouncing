import QtQuick 2.15

Item {
    width: 40
    height: 40
    property int bx: ball.y

    property int upDownScreen
    property int leftRightScreen
    property int borderSize

    property int upDownLimit: ((upDownScreen / 2) - (ball.height / 2)) - borderSize
    property int leftRightLimit: ((leftRightScreen / 2) - (ball.width / 2)) - borderSize


    Rectangle {
        id: ball
        width: 40
        height: 40
        radius: width / 2
        color: "red"


        property real vx: 2
        property real vy: 2
        property bool bToRight: true
        property bool bToUp: true


        Timer {
            interval: 16   // ~60 FPS
            running: true
            repeat: true

            onTriggered: {

                if(ball.bToRight){
                    ball.x += ball.vx
                    if(ball.x > leftRightLimit)
                        ball.bToRight = false}
                else{
                    ball.x -= ball.vx
                    if(ball.x < -leftRightLimit)
                        ball.bToRight = true
                }

                if(ball.bToUp){
                    ball.y += ball.vy
                    if(ball.y > upDownLimit)
                        ball.bToUp = false}
                else{
                    ball.y -= ball.vy
                    if(ball.y < -upDownLimit)
                        ball.bToUp = true
                }


            }

        }
    }
}

