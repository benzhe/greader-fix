.class public abstract Landroidx/lifecycle/LiveData$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "b"
.end annotation


# instance fields
.field public final e:Ljd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljd<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public final synthetic h:Landroidx/lifecycle/LiveData;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LiveData;Ljd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/LiveData$b;->h:Landroidx/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/lifecycle/LiveData$b;->g:I

    .line 3
    iput-object p2, p0, Landroidx/lifecycle/LiveData$b;->e:Ljd;

    return-void
.end method


# virtual methods
.method public d(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$b;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->f:Z

    .line 3
    iget-object v0, p0, Landroidx/lifecycle/LiveData$b;->h:Landroidx/lifecycle/LiveData;

    iget v1, v0, Landroidx/lifecycle/LiveData;->c:I

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    add-int/2addr v1, v2

    .line 4
    iput v1, v0, Landroidx/lifecycle/LiveData;->c:I

    if-eqz v3, :cond_3

    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()V

    .line 6
    :cond_3
    iget-object p1, p0, Landroidx/lifecycle/LiveData$b;->h:Landroidx/lifecycle/LiveData;

    iget v0, p1, Landroidx/lifecycle/LiveData;->c:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/lifecycle/LiveData$b;->f:Z

    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()V

    .line 8
    :cond_4
    iget-boolean p1, p0, Landroidx/lifecycle/LiveData$b;->f:Z

    if-eqz p1, :cond_5

    .line 9
    iget-object p1, p0, Landroidx/lifecycle/LiveData$b;->h:Landroidx/lifecycle/LiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->c(Landroidx/lifecycle/LiveData$b;)V

    :cond_5
    return-void
.end method

.method public h()V
    .locals 0

    return-void
.end method

.method public j(Ldd;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public abstract k()Z
.end method
