shinyUI(pageWithSidebar(
        #Application title
        headerPanel("Blood Pressure diagnosis for adults"),
        sidebarPanel(
          numericInput('systolic', 'Systolic presure mmHg', 120, min=70, max=190, step=5),
          numericInput('diastolic', 'Diastolic presure mmHg', 80, min=40, max=100, step=5),
          submitButton('Submit')
        ),
        mainPanel(
                p('Blood pressure is the resultant force of the blood against the walls of the arteries while travelling through them'),
                p('It is the result of two forces: (1) A force created by the heart when pumps blood into the arteries and through the circulatory sistem and (2) A force created by the arteries as they resists to the flow of blood'),
                p('The systolic or higher number is the pressure when the heart contracts to pump blood to the body and the diastolic or lower number is the pressure when the heart relaxes between beats'),
                p('Based on the values of systolic and diastolic presure input. This app diagnose if the blood presure is Low, Ideal, Pre-high or High. According to the following figure.'),
                img(src="./blood_class.gif", height = 250, width = 165),
                p('Any case not specified in the figure above is classified in the Undefined category'),
                h3('Diagnosis result'),
                h4('Which resulted in:'),
                verbatimTextOutput('diagnosis')
        )
))
