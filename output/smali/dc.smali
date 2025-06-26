.class public abstract Ldc;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldc$a;
    }
.end annotation


# instance fields
.field public a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldc$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:Ljava/lang/CharSequence;

.field public o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldc;->a:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ldc;->i:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ldc;->q:Z

    return-void
.end method


# virtual methods
.method public b(Ldc$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ldc;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p0, Ldc;->b:I

    iput v0, p1, Ldc$a;->c:I

    .line 3
    iget v0, p0, Ldc;->c:I

    iput v0, p1, Ldc$a;->d:I

    .line 4
    iget v0, p0, Ldc;->d:I

    iput v0, p1, Ldc$a;->e:I

    .line 5
    iget v0, p0, Ldc;->e:I

    iput v0, p1, Ldc$a;->f:I

    return-void
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e(Landroidx/fragment/app/Fragment;)Ldc;
.end method

.method public abstract f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
.end method

.method public g(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ldc;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Ldc;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract h(Landroidx/fragment/app/Fragment;Lad$b;)Ldc;
.end method
