.class public La17;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:F

.field public b:I

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:Z

.field public h:F

.field public i:Lc17;


# direct methods
.method public constructor <init>(La17$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, La17;->a:F

    const/high16 p1, -0x1000000

    .line 3
    iput p1, p0, La17;->b:I

    const p1, 0x3f4ccccd    # 0.8f

    .line 4
    iput p1, p0, La17;->c:F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, La17;->d:F

    const/high16 p1, 0x40a00000    # 5.0f

    .line 6
    iput p1, p0, La17;->e:F

    const/high16 p1, 0x3e800000    # 0.25f

    .line 7
    iput p1, p0, La17;->f:F

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, La17;->g:Z

    const p1, 0x3e3851ec    # 0.18f

    .line 9
    iput p1, p0, La17;->h:F

    .line 10
    sget-object p1, Lc17;->e:Lc17;

    iput-object p1, p0, La17;->i:Lc17;

    return-void
.end method
