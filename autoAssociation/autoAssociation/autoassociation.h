#ifndef AUTOASSOCIATION
#define AUTOASSOCIATION

#include <QColor>
#include <QObject>

#include <iostream>
#include "QString.h"

#include "matrix.h"
class Autoassociation : public QObject
{
    Q_OBJECT
   // Q_PROPERTY(QColor color_1_1 READ color_1_1 WRITE setColor_1_1)
  //  Q_PROPERTY(QColor color_1_2 READ color_1_2 WRITE setColor_1_2)
  //  Q_PROPERTY(QColor color_1_3 READ color_1_3 WRITE setColor_1_3)
  //  Q_PROPERTY(QColor color_1_4 READ color_1_4 WRITE setColor_1_4)
  //  Q_PROPERTY(QColor color_1_5 READ color_1_5 WRITE setColor_1_5)

    Q_PROPERTY(QString data_1 READ data_1 WRITE setData_1)
    Q_PROPERTY(QString data_2 READ data_2 WRITE setData_2)
    Q_PROPERTY(QString data_3 READ data_3 WRITE setData_3)
    Q_PROPERTY(QString data_4 READ data_4 WRITE setData_4)
    Q_PROPERTY(QString data_5 READ data_5 WRITE setData_5)

    Q_PROPERTY(QString data_6 READ data_6 WRITE setData_6)
    Q_PROPERTY(QString data_7 READ data_7 WRITE setData_7)
    Q_PROPERTY(QString data_8 READ data_8 WRITE setData_8)
    Q_PROPERTY(QString data_9 READ data_9 WRITE setData_9)
    Q_PROPERTY(QString data_10 READ data_10 WRITE setData_10)

    Q_PROPERTY(QString data_11 READ data_11 WRITE setData_11)
    Q_PROPERTY(QString data_12 READ data_12 WRITE setData_12)
    Q_PROPERTY(QString data_13 READ data_13 WRITE setData_13)
    Q_PROPERTY(QString data_14 READ data_14 WRITE setData_14)
    Q_PROPERTY(QString data_15 READ data_15 WRITE setData_15)

    Q_PROPERTY(QString data_16 READ data_16 WRITE setData_16)
    Q_PROPERTY(QString data_17 READ data_17 WRITE setData_17)
    Q_PROPERTY(QString data_18 READ data_18 WRITE setData_18)
    Q_PROPERTY(QString data_19 READ data_19 WRITE setData_19)
    Q_PROPERTY(QString data_20 READ data_20 WRITE setData_20)

     Q_PROPERTY(QString data_21 READ data_21 WRITE setData_21)
    Q_PROPERTY(QString data_22 READ data_22 WRITE setData_22)
    Q_PROPERTY(QString data_23 READ data_23 WRITE setData_23)
    Q_PROPERTY(QString data_24 READ data_24 WRITE setData_24)
    Q_PROPERTY(QString data_25 READ data_25 WRITE setData_25)

    Q_PROPERTY(QString data_26 READ data_26 WRITE setData_26)
    Q_PROPERTY(QString data_27 READ data_27 WRITE setData_27)
    Q_PROPERTY(QString data_28 READ data_28 WRITE setData_28)
    Q_PROPERTY(QString data_29 READ data_29 WRITE setData_29)
    Q_PROPERTY(QString data_30 READ data_30 WRITE setData_30)


  /*  Q_PROPERTY(QColor color_2_1 READ color_2_1 WRITE setColor_2_1)
    Q_PROPERTY(QColor color_2_2 READ color_2_2 WRITE setColor_2_2)
    Q_PROPERTY(QColor color_2_3 READ color_2_3 WRITE setColor_2_3)
    Q_PROPERTY(QColor color_2_4 READ color_2_4 WRITE setColor_2_4)
    Q_PROPERTY(QColor color_2_5 READ color_2_5 WRITE setColor_2_5)

    Q_PROPERTY(QColor color_3_1 READ color_3_1 WRITE setColor_3_1)
    Q_PROPERTY(QColor color_3_2 READ color_3_2 WRITE setColor_3_2)
    Q_PROPERTY(QColor color_3_3 READ color_3_3 WRITE setColor_3_3)
    Q_PROPERTY(QColor color_3_4 READ color_3_4 WRITE setColor_3_4)
    Q_PROPERTY(QColor color_3_5 READ color_3_5 WRITE setColor_3_5)

    Q_PROPERTY(QColor color_4_1 READ color_4_1 WRITE setColor_4_1)
    Q_PROPERTY(QColor color_4_2 READ color_4_2 WRITE setColor_4_2)
    Q_PROPERTY(QColor color_4_3 READ color_4_3 WRITE setColor_4_3)
    Q_PROPERTY(QColor color_4_4 READ color_4_4 WRITE setColor_4_4)
    Q_PROPERTY(QColor color_4_5 READ color_4_5 WRITE setColor_4_5)

    Q_PROPERTY(QColor color_5_1 READ color_5_1 WRITE setColor_5_1)
    Q_PROPERTY(QColor color_5_2 READ color_5_2 WRITE setColor_5_2)
    Q_PROPERTY(QColor color_5_3 READ color_5_3 WRITE setColor_5_3)
    Q_PROPERTY(QColor color_5_4 READ color_5_4 WRITE setColor_5_4)
    Q_PROPERTY(QColor color_5_5 READ color_5_5 WRITE setColor_5_5)

    Q_PROPERTY(QColor color_6_1 READ color_6_1 WRITE setColor_6_1)
    Q_PROPERTY(QColor color_6_2 READ color_6_2 WRITE setColor_6_2)
    Q_PROPERTY(QColor color_6_3 READ color_6_3 WRITE setColor_6_3)
    Q_PROPERTY(QColor color_6_4 READ color_6_4 WRITE setColor_6_4)
    Q_PROPERTY(QColor color_6_5 READ color_6_5 WRITE setColor_6_5)*/


public:
    Autoassociation(QObject *parent = 0);
    ~Autoassociation();

    QColor color_1_1() const;
    void setColor_1_1(const QColor & color_1_1);

    QColor color_1_2() const;
    void setColor_1_2(const QColor & color_1_2);

    QColor color_1_3() const;
    void setColor_1_3(const QColor & color_1_3);

    QColor color_1_4() const;
    void setColor_1_4(const QColor & color_1_4);

    QColor color_1_5() const;
    void setColor_1_5(const QColor & color_1_5);

    QString data_1() const;
    void setData_1(const QString & data_1);

    QString data_2() const;
    void setData_2(const QString & data_2);

    QString data_3() const;
    void setData_3(const QString & data_3);

    QString data_4() const;
    void setData_4(const QString & data_4);

    QString data_5() const;
    void setData_5(const QString & data_5);

    QString data_6() const;
    void setData_6(const QString & data_6);

    QString data_7() const;
    void setData_7(const QString & data_7);

    QString data_8() const;
    void setData_8(const QString & data_8);

    QString data_9() const;
    void setData_9(const QString & data_9);

    QString data_10() const;
    void setData_10(const QString & data_10);

    QString data_11() const;
    void setData_11(const QString & data_11);

    QString data_12() const;
    void setData_12(const QString & data_12);

    QString data_13() const;
    void setData_13(const QString & data_13);

    QString data_14() const;
    void setData_14(const QString & data_14);

    QString data_15() const;
    void setData_15(const QString & data_15);

    QString data_16() const;
    void setData_16(const QString & data_16);

    QString data_17() const;
    void setData_17(const QString & data_17);

    QString data_18() const;
    void setData_18(const QString & data_18);

    QString data_19() const;
    void setData_19(const QString & data_19);

    QString data_20() const;
    void setData_20(const QString & data_20);

    QString data_21() const;
    void setData_21(const QString & data_21);

    QString data_22() const;
    void setData_22(const QString & data_22);

    QString data_23() const;
    void setData_23(const QString & data_23);

    QString data_24() const;
    void setData_24(const QString & data_24);

    QString data_25() const;
    void setData_25(const QString & data_25);

    QString data_26() const;
    void setData_26(const QString & data_26);

    QString data_27() const;
    void setData_27(const QString & data_27);

    QString data_28() const;
    void setData_28(const QString & data_28);

    QString data_29() const;
    void setData_29(const QString & data_29);

    QString data_30() const;
    void setData_30(const QString & data_30);

public slots:

    void process();
    void processSubt();
    void processInput();


private:

    QColor m_color_1_1;
    QColor m_color_1_2;
    QColor m_color_1_3;
    QColor m_color_1_4;
    QColor m_color_1_5;

    int *array;
    int *sumArray;
    int *output;

    QString data1,data2,data3,data4,data5;
    QString data6,data7,data8,data9,data10;
    QString data11,data12,data13,data14,data15;
    QString data16,data17,data18,data19,data20;
    QString data21,data22,data23,data24,data25;
    QString data26,data27,data28,data29,data30;

};

#endif // AUTOASSOCIATION

