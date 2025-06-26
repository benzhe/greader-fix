.class public final enum Loj;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Loj;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Loj;

.field public static final enum f:Loj;

.field public static final synthetic g:[Loj;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Loj;

    const-string v1, "EXPONENTIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Loj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Loj;->e:Loj;

    .line 2
    new-instance v1, Loj;

    const-string v3, "LINEAR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Loj;-><init>(Ljava/lang/String;I)V

    sput-object v1, Loj;->f:Loj;

    const/4 v3, 0x2

    new-array v3, v3, [Loj;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Loj;->g:[Loj;

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

.method public static valueOf(Ljava/lang/String;)Loj;
    .locals 1

    .line 1
    const-class v0, Loj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Loj;

    return-object p0
.end method

.method public static values()[Loj;
    .locals 1

    .line 1
    sget-object v0, Loj;->g:[Loj;

    invoke-virtual {v0}, [Loj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Loj;

    return-object v0
.end method
