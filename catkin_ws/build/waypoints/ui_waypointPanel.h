/********************************************************************************
** Form generated from reading UI file 'waypointPanel.ui'
**
** Created by: Qt User Interface Compiler version 5.12.8
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_WAYPOINTPANEL_H
#define UI_WAYPOINTPANEL_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QLabel>
#include <QtWidgets/QListWidget>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QSpacerItem>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_waypointPanel
{
public:
    QGridLayout *gridLayout_5;
    QHBoxLayout *horizontalLayout;
    QLabel *label;
    QComboBox *groupBox;
    QCheckBox *loopcheckBox;
    QVBoxLayout *verticalLayout_2;
    QLabel *label_2;
    QListWidget *listWp;
    QPushButton *runWpButton;
    QPushButton *deleteWpButton;
    QVBoxLayout *verticalLayout_4;
    QPushButton *add2GroupButton;
    QPushButton *delete2GroupButton;
    QVBoxLayout *verticalLayout;
    QListWidget *listGroup;
    QGridLayout *gridLayout_2;
    QPushButton *newGroupButton;
    QPushButton *stopGroupButton;
    QSpacerItem *verticalSpacer;
    QPushButton *deleteGroupButton;
    QPushButton *runGroupButton;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *saveFileButton;
    QPushButton *loadFileButton;

    void setupUi(QWidget *waypointPanel)
    {
        if (waypointPanel->objectName().isEmpty())
            waypointPanel->setObjectName(QString::fromUtf8("waypointPanel"));
        waypointPanel->resize(576, 541);
        waypointPanel->setAutoFillBackground(false);
        gridLayout_5 = new QGridLayout(waypointPanel);
        gridLayout_5->setSpacing(6);
        gridLayout_5->setContentsMargins(11, 11, 11, 11);
        gridLayout_5->setObjectName(QString::fromUtf8("gridLayout_5"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setSpacing(6);
        horizontalLayout->setObjectName(QString::fromUtf8("horizontalLayout"));
        label = new QLabel(waypointPanel);
        label->setObjectName(QString::fromUtf8("label"));

        horizontalLayout->addWidget(label);

        groupBox = new QComboBox(waypointPanel);
        groupBox->setObjectName(QString::fromUtf8("groupBox"));

        horizontalLayout->addWidget(groupBox);

        loopcheckBox = new QCheckBox(waypointPanel);
        loopcheckBox->setObjectName(QString::fromUtf8("loopcheckBox"));

        horizontalLayout->addWidget(loopcheckBox);


        gridLayout_5->addLayout(horizontalLayout, 0, 2, 1, 1);

        verticalLayout_2 = new QVBoxLayout();
        verticalLayout_2->setSpacing(6);
        verticalLayout_2->setObjectName(QString::fromUtf8("verticalLayout_2"));
        label_2 = new QLabel(waypointPanel);
        label_2->setObjectName(QString::fromUtf8("label_2"));

        verticalLayout_2->addWidget(label_2);

        listWp = new QListWidget(waypointPanel);
        listWp->setObjectName(QString::fromUtf8("listWp"));

        verticalLayout_2->addWidget(listWp);

        runWpButton = new QPushButton(waypointPanel);
        runWpButton->setObjectName(QString::fromUtf8("runWpButton"));

        verticalLayout_2->addWidget(runWpButton);

        deleteWpButton = new QPushButton(waypointPanel);
        deleteWpButton->setObjectName(QString::fromUtf8("deleteWpButton"));

        verticalLayout_2->addWidget(deleteWpButton);


        gridLayout_5->addLayout(verticalLayout_2, 0, 0, 7, 1);

        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setSpacing(6);
        verticalLayout_4->setObjectName(QString::fromUtf8("verticalLayout_4"));
        add2GroupButton = new QPushButton(waypointPanel);
        add2GroupButton->setObjectName(QString::fromUtf8("add2GroupButton"));

        verticalLayout_4->addWidget(add2GroupButton);

        delete2GroupButton = new QPushButton(waypointPanel);
        delete2GroupButton->setObjectName(QString::fromUtf8("delete2GroupButton"));

        verticalLayout_4->addWidget(delete2GroupButton);


        gridLayout_5->addLayout(verticalLayout_4, 3, 1, 1, 1);

        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(6);
        verticalLayout->setObjectName(QString::fromUtf8("verticalLayout"));
        listGroup = new QListWidget(waypointPanel);
        listGroup->setObjectName(QString::fromUtf8("listGroup"));

        verticalLayout->addWidget(listGroup);


        gridLayout_5->addLayout(verticalLayout, 3, 2, 1, 1);

        gridLayout_2 = new QGridLayout();
        gridLayout_2->setSpacing(6);
        gridLayout_2->setObjectName(QString::fromUtf8("gridLayout_2"));
        gridLayout_2->setHorizontalSpacing(1);
        gridLayout_2->setVerticalSpacing(2);
        gridLayout_2->setContentsMargins(0, 0, 0, 0);
        newGroupButton = new QPushButton(waypointPanel);
        newGroupButton->setObjectName(QString::fromUtf8("newGroupButton"));

        gridLayout_2->addWidget(newGroupButton, 4, 0, 1, 1);

        stopGroupButton = new QPushButton(waypointPanel);
        stopGroupButton->setObjectName(QString::fromUtf8("stopGroupButton"));

        gridLayout_2->addWidget(stopGroupButton, 2, 0, 1, 1);

        verticalSpacer = new QSpacerItem(0, 150, QSizePolicy::Minimum, QSizePolicy::Fixed);

        gridLayout_2->addItem(verticalSpacer, 3, 0, 1, 1);

        deleteGroupButton = new QPushButton(waypointPanel);
        deleteGroupButton->setObjectName(QString::fromUtf8("deleteGroupButton"));

        gridLayout_2->addWidget(deleteGroupButton, 5, 0, 1, 1);

        runGroupButton = new QPushButton(waypointPanel);
        runGroupButton->setObjectName(QString::fromUtf8("runGroupButton"));

        gridLayout_2->addWidget(runGroupButton, 1, 0, 1, 1);


        gridLayout_5->addLayout(gridLayout_2, 3, 3, 1, 1);

        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setSpacing(6);
        horizontalLayout_2->setObjectName(QString::fromUtf8("horizontalLayout_2"));
        horizontalLayout_2->setContentsMargins(-1, 5, -1, -1);
        saveFileButton = new QPushButton(waypointPanel);
        saveFileButton->setObjectName(QString::fromUtf8("saveFileButton"));

        horizontalLayout_2->addWidget(saveFileButton);

        loadFileButton = new QPushButton(waypointPanel);
        loadFileButton->setObjectName(QString::fromUtf8("loadFileButton"));

        horizontalLayout_2->addWidget(loadFileButton);


        gridLayout_5->addLayout(horizontalLayout_2, 5, 2, 1, 1);


        retranslateUi(waypointPanel);

        QMetaObject::connectSlotsByName(waypointPanel);
    } // setupUi

    void retranslateUi(QWidget *waypointPanel)
    {
        waypointPanel->setWindowTitle(QApplication::translate("waypointPanel", "MainWindow", nullptr));
        label->setText(QApplication::translate("waypointPanel", "Group", nullptr));
        loopcheckBox->setText(QApplication::translate("waypointPanel", "Loop", nullptr));
        label_2->setText(QApplication::translate("waypointPanel", "Waypoints", nullptr));
        runWpButton->setText(QApplication::translate("waypointPanel", "Run Waypoint", nullptr));
        deleteWpButton->setText(QApplication::translate("waypointPanel", "Delete Waypoint", nullptr));
        add2GroupButton->setText(QApplication::translate("waypointPanel", "+", nullptr));
        delete2GroupButton->setText(QApplication::translate("waypointPanel", "-", nullptr));
        newGroupButton->setText(QApplication::translate("waypointPanel", "New Group", nullptr));
        stopGroupButton->setText(QApplication::translate("waypointPanel", "Stop", nullptr));
        deleteGroupButton->setText(QApplication::translate("waypointPanel", "Delete Group", nullptr));
        runGroupButton->setText(QApplication::translate("waypointPanel", "Run Group", nullptr));
        saveFileButton->setText(QApplication::translate("waypointPanel", "Save File", nullptr));
        loadFileButton->setText(QApplication::translate("waypointPanel", "Load File", nullptr));
    } // retranslateUi

};

namespace Ui {
    class waypointPanel: public Ui_waypointPanel {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_WAYPOINTPANEL_H
