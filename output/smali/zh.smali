.class public Lzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf4<",
            "Landroid/view/View;",
            "Lyh;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lj4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lf4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf4<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    iput-object v0, p0, Lzh;->a:Lf4;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzh;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Lj4;

    invoke-direct {v0}, Lj4;-><init>()V

    iput-object v0, p0, Lzh;->c:Lj4;

    .line 5
    new-instance v0, Lf4;

    invoke-direct {v0}, Lf4;-><init>()V

    iput-object v0, p0, Lzh;->d:Lf4;

    return-void
.end method
