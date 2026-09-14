#include <stdio.h>
#include <string.h>

int main() {
    int senha;
    int senha1;
    int opcao;
    char login[20];
    char login1[20];

    printf("Crie um login: \n");
    scanf("%19s", login);

    printf("Crie uma senha(somente numeros): \n");
    scanf("%d", &senha);

    printf("Digite seu login: \n");
    scanf("%19s", login1);

    printf("Digite sua senha(somente numeros): \n");
    scanf("%d", &senha1);

    if(strcmp(login, login1) == 0 && senha == senha1){
        printf("Login aprovado!\n");

        while (1){
            printf("\n==== MENU ====\n");
            printf("1 - Perfil\n");
            printf("2 - Ver dia da semana\n");
            printf("3 - Sair\n");
            printf("Escolha uma opção: ");
            scanf("%d", &opcao);

            switch(opcao) {
                case 1: {
                    char yn[20];

                    printf("\n==== PERFIL ====\n");
                    printf("Seu login é %s\n", login1);
                    printf("Deseja ver sua senha? [y / n]: ");
                    scanf("%19s", yn);

                    if (strcmp(yn, "y") == 0){
                        printf("\nSua senha é: %d\n", senha1);
                    }else{
                        printf("\nSua senha não será exibida.\n");
                    }
                    break;
                }

                case 2: {
                    int dia;

                    printf("\n==== DIA DA SEMANA ====\n");
                    printf("Digite um número para saber o dia correspondente: ");
                    scanf("%d", &dia);

                    switch(dia){
                        case 1:
                            printf("\nDomingo\n");
                            break;

                        case 2:
                            printf("\nSegunda-feira\n");
                            break;

                        case 3:
                            printf("\nTerça-feira\n");
                            break;

                        case 4:
                            printf("\nQuarta-feira\n");
                            break;

                        case 5:
                            printf("\nQuinta-feira\n");
                            break;

                        case 6:
                            printf("\nSexta-feira\n");
                            break;

                        case 7:
                            printf("\nSábado\n");
                            break;

                        default:
                            printf("\nDia invalido!\n");
                            break;
                    }
                    break;
                }

                case 3:
                    printf("\nEncerrando...\n");
                    return 0;

                default:
                    printf("\nOpção inválida!\n");
            }
        }
    }else{
        printf("\nLogin incorreto!\n");
        return 0;
    }

    return 0;
}
