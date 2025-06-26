.class public final enum Lxq5$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxq5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lxq5$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lxq5$a;

.field public static final enum g:Lxq5$a;

.field public static final synthetic h:[Lxq5$a;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lxq5$a;

    const-string v1, "ASCENDING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lxq5$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lxq5$a;->f:Lxq5$a;

    .line 2
    new-instance v1, Lxq5$a;

    const-string v4, "DESCENDING"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v3, v5}, Lxq5$a;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lxq5$a;->g:Lxq5$a;

    const/4 v4, 0x2

    new-array v4, v4, [Lxq5$a;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    .line 3
    sput-object v4, Lxq5$a;->h:[Lxq5$a;

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

    .line 2
    iput p3, p0, Lxq5$a;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lxq5$a;
    .locals 1

    .line 1
    const-class v0, Lxq5$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lxq5$a;

    return-object p0
.end method

.method public static values()[Lxq5$a;
    .locals 1

    .line 1
    sget-object v0, Lxq5$a;->h:[Lxq5$a;

    invoke-virtual {v0}, [Lxq5$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lxq5$a;

    return-object v0
.end method
