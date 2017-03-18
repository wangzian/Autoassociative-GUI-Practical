import QtQuick 2.2
import QtQuick.Window 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

import an.qt.Autoassociation 1.0

Window {
    id: wd;
    visible: true
    width: 800;
    height: 650;
    Text{
        id: text1 ;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.verticalCenter: parent.verticalCenter;
        text: "人工神经网络";

    }

   // var a = new Array(30);

    Grid{
        id: patter;
        anchors.left: parent.left;
        anchors.leftMargin: 4;
        //anchors.right: parent.right;
        //anchors.rightMargin: 4;
        anchors.top: parent.top;
        anchors.topMargin: 4;
       // anchors.bottom: parent.bottom;
       // anchors.bottomMargin: 4;
        rows: 6;
        columns: 5;
        rowSpacing: 4;
        columnSpacing: 4;

        Component{
            id: blockRec;
            Rectangle{
                color:"black";
                width:45;
                height:45;
                signal flagClickedRed();
                signal flagClickedBlack();
                MouseArea{
                    anchors.fill: parent;
                    onClicked: {
                        if( Qt.colorEqual(parent.color,"red")){
                            parent.color = "black";
                            parent.flagClickedRed();

                    }else{
                        parent.color = "red";
                        parent.flagClickedBlack();
                     }
                    }
                }
            }
        }


        Loader{
            id : blockRec_1_1;
            sourceComponent: blockRec;
        }
        Connections{
            target: blockRec_1_1.item;
            onFlagClickedRed:{
                text1.text = "指导老师：袁慎芳";
                //a[1] = 1;
            }
            onFlagClickedBlack:{
                text1.text = "人工神经网络";
               // a[1] = -1;
                //console.log(a[1]);
            }
        }
        Loader{
            id : blockRec_1_2;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_1_3;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_1_4;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_1_5;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_2_1;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_2_2;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_2_3;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_2_4;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_2_5;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_3_1;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_3_2;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_3_3;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_3_4;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_3_5;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_4_1;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_4_2;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_4_3;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_4_4;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_4_5;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_5_1;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_5_2;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_5_3;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_5_4;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_5_5;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_6_1;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_6_2;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_6_3;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_6_4;
            sourceComponent: blockRec;
        }
        Loader{
            id : blockRec_6_5;
            sourceComponent: blockRec;
           // Component.onCompleted: autoassociationChecke();
        }

    }
    Component{
        id: radioStyle;
        RadioButtonStyle{
            indicator: Rectangle{
                implicitHeight: 12;
                implicitWidth: 10;
                radius: 3;
                border.color: control.hovered? "darkblue": "gray";
                border.width: 1;
                Rectangle{
                    anchors.fill: parent;
                    visible: control.checked;
                    color: "#0000A0";
                    radius: 5;
                    anchors.margins: 3;
                }
            }
            label: Text{
                color:control.activeFocus ? "blue":"black";
                text:control.text;
            }
        }
    }

    Grid{
        id: biasChose;
        anchors.left: patter.left;
        anchors.top: patter.bottom;
        anchors.right: patter.right;
        anchors.topMargin: 15;
        anchors.leftMargin: 30;
        rows: 1;
        columns: 3;
        columnSpacing: 10;
        ExclusiveGroup{
            id: mos;
        }
        RadioButton{
            id: zero;
            text:"zero";
            width: 50;
            exclusiveGroup: mos;
            style:radioStyle;
            onClicked: choseZero();
        }
        RadioButton{
            id: one;
            text:"one";
            style:radioStyle;
            exclusiveGroup: mos;
            onClicked: choseOne();
        }
        RadioButton{
            id: two;
            text:"two";
            style:radioStyle;
            exclusiveGroup: mos;
            onClicked: choseTwo();
        }

    }
    Grid{
        id: proChose;
        anchors.left: patter.right;
        anchors.leftMargin: 20;
        anchors.verticalCenter: patter.verticalCenter;
        //anchors.top:patter.top;
        //anchors.topMargin: 10;
        rows: 2;
        columns: 1;
        rowSpacing: 10;
        ExclusiveGroup{
            id:chose;
        }
        RadioButton{
            id:pattern;
            text:"Pattern";
            style:radioStyle;
            exclusiveGroup: chose;
        }
        RadioButton{
            id:inPuts;
            text:"InPut";
            style:radioStyle;
            exclusiveGroup: chose;

        }

    }

    function choseZero(){
         blockRec_1_1.item.color = "black";
         blockRec_1_2.item.color = "Red";
         blockRec_1_3.item.color = "Red";
         blockRec_1_4.item.color = "Red";
         blockRec_1_5.item.color = "black";
         blockRec_2_1.item.color = "Red";
         blockRec_2_2.item.color = "Black";
         blockRec_2_3.item.color = "Black";
         blockRec_2_4.item.color = "Black";
         blockRec_2_5.item.color = "Red";
         blockRec_3_1.item.color = "Red";
         blockRec_3_2.item.color = "Black";
         blockRec_3_3.item.color = "Black";
         blockRec_3_4.item.color = "Black";
         blockRec_3_5.item.color = "Red";
         blockRec_4_1.item.color = "Red";
         blockRec_4_2.item.color = "Black";
         blockRec_4_3.item.color = "Black";
         blockRec_4_4.item.color = "Black";
         blockRec_4_5.item.color = "Red";
         blockRec_5_1.item.color = "Red";
         blockRec_5_2.item.color = "Black";
         blockRec_5_3.item.color = "Black";
         blockRec_5_4.item.color = "Black";
         blockRec_5_5.item.color = "Red";
         blockRec_6_1.item.color = "black";
         blockRec_6_2.item.color = "Red";
         blockRec_6_3.item.color = "Red";
         blockRec_6_4.item.color = "Red";
         blockRec_6_5.item.color = "black";
     }
    function choseOne(){
        blockRec_1_1.item.color = "Black";
        blockRec_1_2.item.color = "Red";
        blockRec_1_3.item.color = "Red";
        blockRec_1_4.item.color = "Black";
        blockRec_1_5.item.color = "Black";
        blockRec_2_1.item.color = "Black";
        blockRec_2_2.item.color = "Black";
        blockRec_2_3.item.color = "Red";
        blockRec_2_4.item.color = "Black";
        blockRec_2_5.item.color = "Black";
        blockRec_3_1.item.color = "Black";
        blockRec_3_2.item.color = "Black";
        blockRec_3_3.item.color = "Red";
        blockRec_3_4.item.color = "Black";
        blockRec_3_5.item.color = "Black";
        blockRec_4_1.item.color = "Black";
        blockRec_4_2.item.color = "Black";
        blockRec_4_3.item.color = "Red";
        blockRec_4_4.item.color = "Black";
        blockRec_4_5.item.color = "Black";
        blockRec_5_1.item.color = "Black";
        blockRec_5_2.item.color = "Black";
        blockRec_5_3.item.color = "Red";
        blockRec_5_4.item.color = "Black";
        blockRec_5_5.item.color = "Black";
        blockRec_6_1.item.color = "Black";
        blockRec_6_2.item.color = "Black";
        blockRec_6_3.item.color = "Red";
        blockRec_6_4.item.color = "Black";
        blockRec_6_5.item.color = "Black";
    }
    function choseTwo(){
        blockRec_1_1.item.color = "Red";
        blockRec_1_2.item.color = "Red";
        blockRec_1_3.item.color = "Red";
        blockRec_1_4.item.color = "Black";
        blockRec_1_5.item.color = "Black";
        blockRec_2_1.item.color = "Black";
        blockRec_2_2.item.color = "Black";
        blockRec_2_3.item.color = "Black";
        blockRec_2_4.item.color = "Red";
        blockRec_2_5.item.color = "Black";
        blockRec_3_1.item.color = "Black";
        blockRec_3_2.item.color = "Black";
        blockRec_3_3.item.color = "Black";
        blockRec_3_4.item.color = "Red";
        blockRec_3_5.item.color = "Black";
        blockRec_4_1.item.color = "Black";
        blockRec_4_2.item.color = "Red";
        blockRec_4_3.item.color = "Red";
        blockRec_4_4.item.color = "Black";
        blockRec_4_5.item.color = "Black";
        blockRec_5_1.item.color = "Black";
        blockRec_5_2.item.color = "Red";
        blockRec_5_3.item.color = "Black";
        blockRec_5_4.item.color = "Black";
        blockRec_5_5.item.color = "Black";
        blockRec_6_1.item.color = "Black";
        blockRec_6_2.item.color = "Red";
        blockRec_6_3.item.color = "Red";
        blockRec_6_4.item.color = "Red";
        blockRec_6_5.item.color = "Red";
    }

    function clearAll(){
        blockRec_1_1.item.color = "Black";
        blockRec_1_2.item.color = "Black";
        blockRec_1_3.item.color = "Black";
        blockRec_1_4.item.color = "Black";
        blockRec_1_5.item.color = "Black";
        blockRec_2_1.item.color = "Black";
        blockRec_2_2.item.color = "Black";
        blockRec_2_3.item.color = "Black";
        blockRec_2_4.item.color = "Black";
        blockRec_2_5.item.color = "Black";
        blockRec_3_1.item.color = "Black";
        blockRec_3_2.item.color = "Black";
        blockRec_3_3.item.color = "Black";
        blockRec_3_4.item.color = "Black";
        blockRec_3_5.item.color = "Black";
        blockRec_4_1.item.color = "Black";
        blockRec_4_2.item.color = "Black";
        blockRec_4_3.item.color = "Black";
        blockRec_4_4.item.color = "Black";
        blockRec_4_5.item.color = "Black";
        blockRec_5_1.item.color = "Black";
        blockRec_5_2.item.color = "Black";
        blockRec_5_3.item.color = "Black";
        blockRec_5_4.item.color = "Black";
        blockRec_5_5.item.color = "Black";
        blockRec_6_1.item.color = "Black";
        blockRec_6_2.item.color = "Black";
        blockRec_6_3.item.color = "Black";
        blockRec_6_4.item.color = "Black";
        blockRec_6_5.item.color = "Black";

    }

   Button{
        id: clearAllId;
        anchors.top: biasChose.bottom;
        anchors.topMargin: 10;
        anchors.left: biasChose.left;
        anchors.leftMargin: 0;
        text: "清除";
        onClicked: {
            clearAll();
        }
   }
   Button{
       anchors.left: clearAllId.right;
       anchors.top: clearAllId.top;
       text:"添加";
       onClicked: {
           if(pattern.checked == true){
               addView.addTab("Pattern-"+(addView.count+1), tabContent);
               //autoassociationChecke();
                autoassociation.data_1 = Qt.colorEqual((blockRec_1_1.item.color),"black")== true?-1:1;
                autoassociation.data_2 = Qt.colorEqual((blockRec_1_2.item.color),"black")== true?-1:1;
                autoassociation.data_3 = Qt.colorEqual((blockRec_1_3.item.color),"black")== true?-1:1;
                autoassociation.data_4 = Qt.colorEqual((blockRec_1_4.item.color),"black")== true?-1:1;
                autoassociation.data_5 = Qt.colorEqual((blockRec_1_5.item.color),"black")== true?-1:1;
                autoassociation.data_6 = Qt.colorEqual((blockRec_2_1.item.color),"black")== true?-1:1;
                autoassociation.data_7 = Qt.colorEqual((blockRec_2_2.item.color),"black")== true?-1:1;
                autoassociation.data_8 = Qt.colorEqual((blockRec_2_3.item.color),"black")== true?-1:1;
                autoassociation.data_9 = Qt.colorEqual((blockRec_2_4.item.color),"black")== true?-1:1;
                autoassociation.data_10 = Qt.colorEqual((blockRec_2_5.item.color),"black")== true?-1:1;
                autoassociation.data_11 = Qt.colorEqual((blockRec_3_1.item.color),"black")== true?-1:1;
                autoassociation.data_12 = Qt.colorEqual((blockRec_3_2.item.color),"black")== true?-1:1;
                autoassociation.data_13 = Qt.colorEqual((blockRec_3_3.item.color),"black")== true?-1:1;
                autoassociation.data_14 = Qt.colorEqual((blockRec_3_4.item.color),"black")== true?-1:1;
                autoassociation.data_15 = Qt.colorEqual((blockRec_3_5.item.color),"black")== true?-1:1;
                autoassociation.data_16 = Qt.colorEqual((blockRec_4_1.item.color),"black")== true?-1:1;
                autoassociation.data_17 = Qt.colorEqual((blockRec_4_2.item.color),"black")== true?-1:1;
                autoassociation.data_18 = Qt.colorEqual((blockRec_4_3.item.color),"black")== true?-1:1;
                autoassociation.data_19 = Qt.colorEqual((blockRec_4_4.item.color),"black")== true?-1:1;
                autoassociation.data_20 = Qt.colorEqual((blockRec_4_5.item.color),"black")== true?-1:1;
                autoassociation.data_21 = Qt.colorEqual((blockRec_5_1.item.color),"black")== true?-1:1;
                autoassociation.data_22 = Qt.colorEqual((blockRec_5_2.item.color),"black")== true?-1:1;
                autoassociation.data_23 = Qt.colorEqual((blockRec_5_3.item.color),"black")== true?-1:1;
                autoassociation.data_24 = Qt.colorEqual((blockRec_5_4.item.color),"black")== true?-1:1;
                autoassociation.data_25 = Qt.colorEqual((blockRec_5_5.item.color),"black")== true?-1:1;
                autoassociation.data_26 = Qt.colorEqual((blockRec_6_1.item.color),"black")== true?-1:1;
                autoassociation.data_27 = Qt.colorEqual((blockRec_6_2.item.color),"black")== true?-1:1;
                autoassociation.data_28 = Qt.colorEqual((blockRec_6_3.item.color),"black")== true?-1:1;
                autoassociation.data_29 = Qt.colorEqual((blockRec_6_4.item.color),"black")== true?-1:1;
                autoassociation.data_30 = Qt.colorEqual((blockRec_6_5.item.color),"black")== true?-1:1;
                autoassociation.process();
                console.log(autoassociation.data_1,autoassociation.data_2,autoassociation.data_3,autoassociation.data_4,"check");
           }
           if(inPuts.checked == true)
           {
               if(addViewInput.count != 0)
               {
                   addViewInput.removeTab(addViewInput.currentIndex);
               }
               console.log(addViewInput.currentIndex);
               addViewInput.addTab("Input",tabContent);
               autoassociation.data_1 = Qt.colorEqual((blockRec_1_1.item.color),"black")== true?-1:1;
               autoassociation.data_2 = Qt.colorEqual((blockRec_1_2.item.color),"black")== true?-1:1;
               autoassociation.data_3 = Qt.colorEqual((blockRec_1_3.item.color),"black")== true?-1:1;
               autoassociation.data_4 = Qt.colorEqual((blockRec_1_4.item.color),"black")== true?-1:1;
               autoassociation.data_5 = Qt.colorEqual((blockRec_1_5.item.color),"black")== true?-1:1;
               autoassociation.data_6 = Qt.colorEqual((blockRec_2_1.item.color),"black")== true?-1:1;
               autoassociation.data_7 = Qt.colorEqual((blockRec_2_2.item.color),"black")== true?-1:1;
               autoassociation.data_8 = Qt.colorEqual((blockRec_2_3.item.color),"black")== true?-1:1;
               autoassociation.data_9 = Qt.colorEqual((blockRec_2_4.item.color),"black")== true?-1:1;
               autoassociation.data_10 = Qt.colorEqual((blockRec_2_5.item.color),"black")== true?-1:1;
               autoassociation.data_11 = Qt.colorEqual((blockRec_3_1.item.color),"black")== true?-1:1;
               autoassociation.data_12 = Qt.colorEqual((blockRec_3_2.item.color),"black")== true?-1:1;
               autoassociation.data_13 = Qt.colorEqual((blockRec_3_3.item.color),"black")== true?-1:1;
               autoassociation.data_14 = Qt.colorEqual((blockRec_3_4.item.color),"black")== true?-1:1;
               autoassociation.data_15 = Qt.colorEqual((blockRec_3_5.item.color),"black")== true?-1:1;
               autoassociation.data_16 = Qt.colorEqual((blockRec_4_1.item.color),"black")== true?-1:1;
               autoassociation.data_17 = Qt.colorEqual((blockRec_4_2.item.color),"black")== true?-1:1;
               autoassociation.data_18 = Qt.colorEqual((blockRec_4_3.item.color),"black")== true?-1:1;
               autoassociation.data_19 = Qt.colorEqual((blockRec_4_4.item.color),"black")== true?-1:1;
               autoassociation.data_20 = Qt.colorEqual((blockRec_4_5.item.color),"black")== true?-1:1;
               autoassociation.data_21 = Qt.colorEqual((blockRec_5_1.item.color),"black")== true?-1:1;
               autoassociation.data_22 = Qt.colorEqual((blockRec_5_2.item.color),"black")== true?-1:1;
               autoassociation.data_23 = Qt.colorEqual((blockRec_5_3.item.color),"black")== true?-1:1;
               autoassociation.data_24 = Qt.colorEqual((blockRec_5_4.item.color),"black")== true?-1:1;
               autoassociation.data_25 = Qt.colorEqual((blockRec_5_5.item.color),"black")== true?-1:1;
               autoassociation.data_26 = Qt.colorEqual((blockRec_6_1.item.color),"black")== true?-1:1;
               autoassociation.data_27 = Qt.colorEqual((blockRec_6_2.item.color),"black")== true?-1:1;
               autoassociation.data_28 = Qt.colorEqual((blockRec_6_3.item.color),"black")== true?-1:1;
               autoassociation.data_29 = Qt.colorEqual((blockRec_6_4.item.color),"black")== true?-1:1;
               autoassociation.data_30 = Qt.colorEqual((blockRec_6_5.item.color),"black")== true?-1:1;


           }
           if(pattern.checked == false && inPuts.checked == false)
           {
               addView.addTab("Pattern-"+addView.count, tabContent);
               console.log(autoassociation.data_1,autoassociation.data_2,autoassociation.data_3,autoassociation.data_4,"check");
           }

       }

   }
   Button{
       anchors.left: clearAllId.left;
       anchors.top: addView.bottom;
       anchors.topMargin: 8;
       text:"清除当前列表"
       onClicked: {
           autoassociationChecke();
           addView.removeTab(addView.currentIndex);
       }
   }
   Component{
       id: tabContent;
       Rectangle{
           anchors.fill: parent;
           ListModel{
               id: colorModel;
           }
           TableView{
               anchors.fill: parent;
               TableViewColumn{
                    role: "color_1";
                    title:"Color";
                    width: 80;

               }
               TableViewColumn{
                    role: "color_2";
                    title: "Color";
                    width: 80;
               }
               TableViewColumn{
                    role: "color_3";
                    title: "Color";
                    width: 80;
               }
               TableViewColumn{
                    role: "color_4";
                    title: "Color";
                    width: 80;
               }
               TableViewColumn{
                    role: "color_5";
                    title: "Color";
                    width: 80;
               }
               model: colorModel;
               Component.onCompleted: {
                   colorModel.append({"color_1":Qt.colorEqual((blockRec_1_1.item.color),"black")== true?-1:1,"color_2":Qt.colorEqual((blockRec_1_2.item.color),"black")==true?-1:1,
                                      "color_3":Qt.colorEqual((blockRec_1_3.item.color),"black")== true?-1:1,"color_4":Qt.colorEqual((blockRec_1_4.item.color),"black")==true?-1:1,
                                      "color_5":Qt.colorEqual((blockRec_1_5.item.color),"black")== true?-1:1});
                   colorModel.append({"color_1":Qt.colorEqual((blockRec_2_1.item.color),"black")== true?-1:1,"color_2":Qt.colorEqual((blockRec_2_2.item.color),"black")==true?-1:1,
                                      "color_3":Qt.colorEqual((blockRec_2_3.item.color),"black")== true?-1:1,"color_4":Qt.colorEqual((blockRec_2_4.item.color),"black")==true?-1:1,
                                      "color_5":Qt.colorEqual((blockRec_2_5.item.color),"black")== true?-1:1});
                   colorModel.append({"color_1":Qt.colorEqual((blockRec_3_1.item.color),"black")== true?-1:1,"color_2":Qt.colorEqual((blockRec_3_2.item.color),"black")==true?-1:1,
                                      "color_3":Qt.colorEqual((blockRec_3_3.item.color),"black")== true?-1:1,"color_4":Qt.colorEqual((blockRec_3_4.item.color),"black")==true?-1:1,
                                      "color_5":Qt.colorEqual((blockRec_3_5.item.color),"black")== true?-1:1});
                   colorModel.append({"color_1":Qt.colorEqual((blockRec_4_1.item.color),"black")== true?-1:1,"color_2":Qt.colorEqual((blockRec_4_2.item.color),"black")==true?-1:1,
                                      "color_3":Qt.colorEqual((blockRec_4_3.item.color),"black")== true?-1:1,"color_4":Qt.colorEqual((blockRec_4_4.item.color),"black")==true?-1:1,
                                      "color_5":Qt.colorEqual((blockRec_4_5.item.color),"black")== true?-1:1});
                   colorModel.append({"color_1":Qt.colorEqual((blockRec_5_1.item.color),"black")== true?-1:1,"color_2":Qt.colorEqual((blockRec_5_2.item.color),"black")==true?-1:1,
                                      "color_3":Qt.colorEqual((blockRec_5_3.item.color),"black")== true?-1:1,"color_4":Qt.colorEqual((blockRec_5_4.item.color),"black")==true?-1:1,
                                      "color_5":Qt.colorEqual((blockRec_5_5.item.color),"black")== true?-1:1});
                   colorModel.append({"color_1":Qt.colorEqual((blockRec_6_1.item.color),"black")== true?-1:1,"color_2":Qt.colorEqual((blockRec_6_2.item.color),"black")==true?-1:1,
                                      "color_3":Qt.colorEqual((blockRec_6_3.item.color),"black")== true?-1:1,"color_4":Qt.colorEqual((blockRec_6_4.item.color),"black")==true?-1:1,
                                      "color_5":Qt.colorEqual((blockRec_6_5.item.color),"black")== true?-1:1});

               }
           }
       }
   }

   Autoassociation{
       id: autoassociation;
   }

   TabView{

        id: addView;
        anchors.top: clearAllId.bottom;
        width: wd.width/2;
        height: wd.height/3;
        //anchors.bottom: wd.bottom;
        anchors.topMargin: 10;
        anchors.left: parent.left;
        anchors.leftMargin: 4;
   }
   TabView{

        id:addViewInput;
        anchors.left: addView.right;
        //anchors.right: wd.right;
        //anchors.rightMargin: 4;
        anchors.leftMargin: 10;
        anchors.top: addView.top;
        width:wd.width/2-20;
        height: wd.height/3;

   }
   TabView{
       id :addViewOutput;
       anchors.left: addViewInput.left;
       anchors.right: addViewInput.right;
      // anchors.top: wd.top;
      // anchors.bottom: clearAllId.bottom;
       anchors.verticalCenter: patter.verticalCenter;
       width:wd.width/2-20;
       height: wd.height/3;

   }

   Button{
       anchors.left: proChose.left;
       anchors.leftMargin: 0;
       anchors.top: proChose.bottom;
       anchors.topMargin: 60;
       text:"自联想计算";
       onClicked: {


           autoassociation.processInput();

           clearAll();
           blockRec_1_1.item.color = (autoassociation.data_1 == "-1"?"black":"red");
           blockRec_1_2.item.color = (autoassociation.data_2 == "-1"?"black":"red");
           blockRec_1_3.item.color = (autoassociation.data_3 == "-1"?"black":"red");
           blockRec_1_4.item.color = (autoassociation.data_4 == "-1"?"black":"red");
           blockRec_1_5.item.color = (autoassociation.data_5 == "-1"?"black":"red");
           blockRec_2_1.item.color = (autoassociation.data_6 == "-1"?"black":"red");
           blockRec_2_2.item.color = (autoassociation.data_7 == "-1"?"black":"red");
           blockRec_2_3.item.color = (autoassociation.data_8 == "-1"?"black":"red");
           blockRec_2_4.item.color = (autoassociation.data_9 == "-1"?"black":"red");
           blockRec_2_5.item.color = (autoassociation.data_10 == "-1"?"black":"red");
           blockRec_3_1.item.color = (autoassociation.data_11 == "-1"?"black":"red");
           blockRec_3_2.item.color = (autoassociation.data_12 == "-1"?"black":"red");
           blockRec_3_3.item.color = (autoassociation.data_13 == "-1"?"black":"red");
           blockRec_3_4.item.color = (autoassociation.data_14 == "-1"?"black":"red");
           blockRec_3_5.item.color = (autoassociation.data_15 == "-1"?"black":"red");
           blockRec_4_1.item.color = (autoassociation.data_16 == "-1"?"black":"red");
           blockRec_4_2.item.color = (autoassociation.data_17 == "-1"?"black":"red");
           blockRec_4_3.item.color = (autoassociation.data_18 == "-1"?"black":"red");
           blockRec_4_4.item.color = (autoassociation.data_19 == "-1"?"black":"red");
           blockRec_4_5.item.color = (autoassociation.data_20 == "-1"?"black":"red");
           blockRec_5_1.item.color = (autoassociation.data_21 == "-1"?"black":"red");
           blockRec_5_2.item.color = (autoassociation.data_22 == "-1"?"black":"red");
           blockRec_5_3.item.color = (autoassociation.data_23 == "-1"?"black":"red");
           blockRec_5_4.item.color = (autoassociation.data_24 == "-1"?"black":"red");
           blockRec_5_5.item.color = (autoassociation.data_25 == "-1"?"black":"red");
           blockRec_6_1.item.color = (autoassociation.data_26 == "-1"?"black":"red");
           blockRec_6_2.item.color = (autoassociation.data_27 == "-1"?"black":"red");
           blockRec_6_3.item.color = (autoassociation.data_28 == "-1"?"black":"red");
           blockRec_6_4.item.color = (autoassociation.data_29 == "-1"?"black":"red");
           blockRec_6_5.item.color = (autoassociation.data_30 == "-1"?"black":"red");

           addViewOutput.addTab("Output",tabContent);

         //  console.log(autoassociation.data_1,autoassociation.data_5)


       }

   }




}



