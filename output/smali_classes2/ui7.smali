.class public final enum Lui7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lui7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lui7;

.field public static final enum f:Lui7;

.field public static final enum g:Lui7;

.field public static final synthetic h:[Lui7;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lui7;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lui7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lui7;->e:Lui7;

    .line 2
    new-instance v1, Lui7;

    const-string v3, "BOUNDARY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lui7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lui7;->f:Lui7;

    .line 3
    new-instance v3, Lui7;

    const-string v5, "END"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lui7;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lui7;->g:Lui7;

    const/4 v5, 0x3

    new-array v5, v5, [Lui7;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lui7;->h:[Lui7;

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

.method public static valueOf(Ljava/lang/String;)Lui7;
    .locals 1

    .line 1
    const-class v0, Lui7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lui7;

    return-object p0
.end method

.method public static values()[Lui7;
    .locals 1

    .line 1
    sget-object v0, Lui7;->h:[Lui7;

    invoke-virtual {v0}, [Lui7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lui7;

    return-object v0
.end method
