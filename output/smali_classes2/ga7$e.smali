.class public final enum Lga7$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lga7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lga7$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lga7$e;

.field public static final enum f:Lga7$e;

.field public static final enum g:Lga7$e;

.field public static final synthetic h:[Lga7$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lga7$e;

    const-string v1, "ALPN_AND_NPN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lga7$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lga7$e;->e:Lga7$e;

    .line 2
    new-instance v1, Lga7$e;

    const-string v3, "NPN"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lga7$e;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lga7$e;->f:Lga7$e;

    .line 3
    new-instance v3, Lga7$e;

    const-string v5, "NONE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lga7$e;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lga7$e;->g:Lga7$e;

    const/4 v5, 0x3

    new-array v5, v5, [Lga7$e;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lga7$e;->h:[Lga7$e;

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

.method public static valueOf(Ljava/lang/String;)Lga7$e;
    .locals 1

    .line 1
    const-class v0, Lga7$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lga7$e;

    return-object p0
.end method

.method public static values()[Lga7$e;
    .locals 1

    .line 1
    sget-object v0, Lga7$e;->h:[Lga7$e;

    invoke-virtual {v0}, [Lga7$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lga7$e;

    return-object v0
.end method
