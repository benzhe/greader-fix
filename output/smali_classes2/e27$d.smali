.class public final enum Le27$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le27$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Le27$d;

.field public static final enum g:Le27$d;

.field public static final enum h:Le27$d;

.field public static final synthetic i:[Le27$d;


# instance fields
.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Le27$d;

    const-string v1, "MEMORY"

    const/4 v2, 0x0

    const v3, -0xff0100

    invoke-direct {v0, v1, v2, v3}, Le27$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Le27$d;->f:Le27$d;

    .line 2
    new-instance v1, Le27$d;

    const-string v3, "DISK"

    const/4 v4, 0x1

    const v5, -0xffff01

    invoke-direct {v1, v3, v4, v5}, Le27$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Le27$d;->g:Le27$d;

    .line 3
    new-instance v3, Le27$d;

    const-string v5, "NETWORK"

    const/4 v6, 0x2

    const/high16 v7, -0x10000

    invoke-direct {v3, v5, v6, v7}, Le27$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Le27$d;->h:Le27$d;

    const/4 v5, 0x3

    new-array v5, v5, [Le27$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Le27$d;->i:[Le27$d;

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
    iput p3, p0, Le27$d;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le27$d;
    .locals 1

    .line 1
    const-class v0, Le27$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le27$d;

    return-object p0
.end method

.method public static values()[Le27$d;
    .locals 1

    .line 1
    sget-object v0, Le27$d;->i:[Le27$d;

    invoke-virtual {v0}, [Le27$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le27$d;

    return-object v0
.end method
