.class public final enum Lkx6;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkx6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lkx6;

.field public static final enum f:Lkx6;

.field public static final enum g:Lkx6;

.field public static final synthetic h:[Lkx6;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lkx6;

    const-string v1, "PHONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lkx6;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lkx6;->e:Lkx6;

    new-instance v1, Lkx6;

    const-string v3, "TABLET_7"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lkx6;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lkx6;->f:Lkx6;

    new-instance v3, Lkx6;

    const-string v5, "TABLET_10"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lkx6;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lkx6;->g:Lkx6;

    const/4 v5, 0x3

    new-array v5, v5, [Lkx6;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lkx6;->h:[Lkx6;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkx6;
    .locals 1

    .line 1
    const-class v0, Lkx6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkx6;

    return-object p0
.end method

.method public static values()[Lkx6;
    .locals 1

    .line 1
    sget-object v0, Lkx6;->h:[Lkx6;

    invoke-virtual {v0}, [Lkx6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkx6;

    return-object v0
.end method
