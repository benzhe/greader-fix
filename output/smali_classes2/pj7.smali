.class public final enum Lpj7;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lpj7;

.field public static final enum f:Lpj7;

.field public static final enum g:Lpj7;

.field public static final synthetic h:[Lpj7;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lpj7;

    new-instance v1, Lpj7;

    const-string v2, "SYNCHRONIZED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lpj7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpj7;->e:Lpj7;

    aput-object v1, v0, v3

    new-instance v1, Lpj7;

    const-string v2, "PUBLICATION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lpj7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpj7;->f:Lpj7;

    aput-object v1, v0, v3

    new-instance v1, Lpj7;

    const-string v2, "NONE"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lpj7;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpj7;->g:Lpj7;

    aput-object v1, v0, v3

    sput-object v0, Lpj7;->h:[Lpj7;

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

.method public static valueOf(Ljava/lang/String;)Lpj7;
    .locals 1

    const-class v0, Lpj7;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpj7;

    return-object p0
.end method

.method public static values()[Lpj7;
    .locals 1

    sget-object v0, Lpj7;->h:[Lpj7;

    invoke-virtual {v0}, [Lpj7;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpj7;

    return-object v0
.end method
