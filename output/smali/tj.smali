.class public final enum Ltj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ltj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Ltj;

.field public static final enum f:Ltj;

.field public static final enum g:Ltj;

.field public static final synthetic h:[Ltj;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ltj;

    const-string v1, "REPLACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ltj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ltj;->e:Ltj;

    .line 2
    new-instance v1, Ltj;

    const-string v3, "KEEP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ltj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ltj;->f:Ltj;

    .line 3
    new-instance v3, Ltj;

    const-string v5, "APPEND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ltj;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ltj;->g:Ltj;

    const/4 v5, 0x3

    new-array v5, v5, [Ltj;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Ltj;->h:[Ltj;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltj;
    .locals 1

    .line 1
    const-class v0, Ltj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ltj;

    return-object p0
.end method

.method public static values()[Ltj;
    .locals 1

    .line 1
    sget-object v0, Ltj;->h:[Ltj;

    invoke-virtual {v0}, [Ltj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltj;

    return-object v0
.end method
