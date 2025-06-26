.class public Ls27$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls27;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Landroid/view/animation/Interpolator;

.field public static final d:Landroid/view/animation/Interpolator;

.field public static final e:Ls27$a;

.field public static final f:Ls27$a;

.field public static final g:Ls27$a;


# instance fields
.field public a:F

.field public b:Landroid/view/animation/Interpolator;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Ls27$a;->c:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v1, Ls27$a;->d:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v2, Ls27$a;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v0}, Ls27$a;-><init>(FLandroid/view/animation/Interpolator;)V

    sput-object v2, Ls27$a;->e:Ls27$a;

    .line 4
    new-instance v2, Ls27$a;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v2, v3, v1}, Ls27$a;-><init>(FLandroid/view/animation/Interpolator;)V

    sput-object v2, Ls27$a;->f:Ls27$a;

    .line 5
    new-instance v1, Ls27$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Ls27$a;-><init>(FLandroid/view/animation/Interpolator;)V

    sput-object v1, Ls27$a;->g:Ls27$a;

    return-void
.end method

.method public constructor <init>(FLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Ls27$a;->a:F

    .line 3
    iput-object p2, p0, Ls27$a;->b:Landroid/view/animation/Interpolator;

    return-void
.end method
