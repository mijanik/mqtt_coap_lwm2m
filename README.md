# MQTT-SN, COAP and LwM2M protocols implementation
## for STM32 EmbeNET Node network
## **Sharing, copying full or a part of project is strictly prohibited**
Google Slides - project description [PL] (20.09.2024) https://docs.google.com/presentation/d/1Z-rlvH5L5WxhMZ4jai3aUcdPBF50T83Pxhtv7MIKrZg/edit?usp=sharing

###### Project purpose
The aim of this work was to review, implement and analyze the possibilities of using **application layer protocols** in Internet of Things (IoT) devices built on the basis of ARM Cortex-M microcontrollers. The work focused on examining the usability of these protocols in the context of resource-constrained devices operating in a low-throughput wireless mesh network, characteristic of IoT systems.
Three application layer protocols were analyzed in this work: **MQTT**, **CoAP** and **LwM2M**. These protocols were selected due to their diversity, popularity and compatibility with the UDP transport protocol, which is characterized by low overhead, which is crucial for devices operating in resource-constrained networks. The aim of the research was to understand which of these protocols best meets the requirements of IoT systems, especially in the context of performance, reliability and overhead. The research work was carried out using the embeNET wireless mesh network on the NUCLEO-WL55JC1 platform.
The first chapter of the work presents the purpose of the study and an overview of the available application layer protocols, taking into account their basic features, advantages and limitations. The second chapter focuses on the description of the embeNET Suite software platform and the STM32 NUCLEO-WL55JC evaluation board, which were used in the research. The third chapter describes in detail the tested protocols: MQTT, CoAP and LwM2M. The fourth chapter of the work is devoted to the implementation of the tested protocols on the selected platform. The last, fifth chapter contains the results of the conducted research and their detailed analysis. These results include an assessment of the effectiveness of the individual protocols, their impact on system resources and network load, and optimization possibilities in resource-constrained environments. The work ends with conclusions regarding the optimal selection of application layer protocols depending on the specific requirements of IoT systems.

###### Project physical components
- STM32 NUCLEO-WL55JC1 development boards
- Raspberry Pi with Linux for testing purposes

###### Tech Stack
- C
- EmbeNET Node Networking Stack (WSN, UDP, 802.15.4e-TSCH)
- STM32 Microcontroller
- MQTT-SN, CoAP and LwM2M Application Protocols
- Wireshark, Build Analyzer, Linux Protocol Servers and other testing environment

###### Project main functionality
The STM32CubeIDE project is located on the repository, which contains implementations of the three protocols being tested. The MQTT-SN service is already in the EmbeNET system by default. LobaroCoAP and WakaamaNode are libraries I implemented and used in this project.

###### About project
- **Developer and owner: Miłosz Janik**
- Made for Diploma Thesis - Master degree - "Application layer protocols for IoT devices using wireless connectivity and the UDP transport protocol."
- Thesis promoter: PhD Łukasz Krzak
- Field of study: Electronics and Telecommunications (Embedded Systems specialization)
- Status - Diploma thesis defended, project development suspended
