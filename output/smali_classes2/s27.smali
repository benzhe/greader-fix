.class public Ls27;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls27$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:F

.field public h:F

.field public i:Landroid/view/animation/Interpolator;

.field public j:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ls27;->a:I

    .line 3
    iput v0, p0, Ls27;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Ls27;->e:Z

    .line 5
    iput-boolean v0, p0, Ls27;->f:Z

    return-void
.end method
