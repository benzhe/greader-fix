.class public final enum Lq08;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lq08;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lq08;

.field public static final enum f:Lq08;

.field public static final synthetic g:[Lq08;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lq08;

    new-instance v1, Lq08;

    const-string v2, "Single"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lq08;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq08;->e:Lq08;

    aput-object v1, v0, v3

    new-instance v1, Lq08;

    const-string v2, "Factory"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lq08;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lq08;->f:Lq08;

    aput-object v1, v0, v3

    sput-object v0, Lq08;->g:[Lq08;

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

.method public static valueOf(Ljava/lang/String;)Lq08;
    .locals 1

    const-class v0, Lq08;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lq08;

    return-object p0
.end method

.method public static values()[Lq08;
    .locals 1

    sget-object v0, Lq08;->g:[Lq08;

    invoke-virtual {v0}, [Lq08;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lq08;

    return-object v0
.end method
