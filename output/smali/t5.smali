.class public Lt5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lv5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv5<",
            "Ls5;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lv5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv5<",
            "Ls5;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lv5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv5<",
            "Lx5;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lx5;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv5;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lv5;-><init>(I)V

    iput-object v0, p0, Lt5;->a:Lv5;

    .line 3
    new-instance v0, Lv5;

    invoke-direct {v0, v1}, Lv5;-><init>(I)V

    iput-object v0, p0, Lt5;->b:Lv5;

    .line 4
    new-instance v0, Lv5;

    invoke-direct {v0, v1}, Lv5;-><init>(I)V

    iput-object v0, p0, Lt5;->c:Lv5;

    const/16 v0, 0x20

    new-array v0, v0, [Lx5;

    .line 5
    iput-object v0, p0, Lt5;->d:[Lx5;

    return-void
.end method
