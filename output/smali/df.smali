.class public final Ldf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ldf;

.field public static final e:Ldf;

.field public static final f:Ldf;

.field public static final g:Ldf;

.field public static final h:Ldf;

.field public static final i:Ldf;


# instance fields
.field public final a:[F

.field public final b:[F

.field public final c:[F


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Ldf;->d:Ldf;

    .line 2
    iget-object v1, v0, Ldf;->b:[F

    const/4 v2, 0x0

    const v3, 0x3f0ccccd    # 0.55f

    aput v3, v1, v2

    const/4 v4, 0x1

    const v5, 0x3f3d70a4    # 0.74f

    .line 3
    aput v5, v1, v4

    .line 4
    invoke-static {v0}, Ldf;->c(Ldf;)V

    .line 5
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Ldf;->e:Ldf;

    .line 6
    invoke-static {v0}, Ldf;->b(Ldf;)V

    .line 7
    invoke-static {v0}, Ldf;->c(Ldf;)V

    .line 8
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Ldf;->f:Ldf;

    .line 9
    iget-object v1, v0, Ldf;->b:[F

    const v6, 0x3e851eb8    # 0.26f

    aput v6, v1, v4

    const/4 v7, 0x2

    const v8, 0x3ee66666    # 0.45f

    .line 10
    aput v8, v1, v7

    .line 11
    invoke-static {v0}, Ldf;->c(Ldf;)V

    .line 12
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Ldf;->g:Ldf;

    .line 13
    iget-object v1, v0, Ldf;->b:[F

    aput v3, v1, v2

    .line 14
    aput v5, v1, v4

    .line 15
    invoke-static {v0}, Ldf;->a(Ldf;)V

    .line 16
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Ldf;->h:Ldf;

    .line 17
    invoke-static {v0}, Ldf;->b(Ldf;)V

    .line 18
    invoke-static {v0}, Ldf;->a(Ldf;)V

    .line 19
    new-instance v0, Ldf;

    invoke-direct {v0}, Ldf;-><init>()V

    sput-object v0, Ldf;->i:Ldf;

    .line 20
    iget-object v1, v0, Ldf;->b:[F

    aput v6, v1, v4

    .line 21
    aput v8, v1, v7

    .line 22
    invoke-static {v0}, Ldf;->a(Ldf;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    .line 2
    iput-object v1, p0, Ldf;->a:[F

    new-array v2, v0, [F

    .line 3
    iput-object v2, p0, Ldf;->b:[F

    new-array v0, v0, [F

    .line 4
    iput-object v0, p0, Ldf;->c:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    aput v6, v1, v5

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    aput v8, v1, v7

    aput v4, v2, v3

    aput v6, v2, v5

    aput v8, v2, v7

    const v1, 0x3e75c28f    # 0.24f

    aput v1, v0, v3

    const v2, 0x3f051eb8    # 0.52f

    aput v2, v0, v5

    aput v1, v0, v7

    return-void
.end method

.method public static a(Ldf;)V
    .locals 2

    .line 1
    iget-object p0, p0, Ldf;->a:[F

    const/4 v0, 0x1

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3ecccccd    # 0.4f

    .line 2
    aput v1, p0, v0

    return-void
.end method

.method public static b(Ldf;)V
    .locals 2

    .line 1
    iget-object p0, p0, Ldf;->b:[F

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 2
    aput v1, p0, v0

    const/4 v0, 0x2

    const v1, 0x3f333333    # 0.7f

    .line 3
    aput v1, p0, v0

    return-void
.end method

.method public static c(Ldf;)V
    .locals 2

    .line 1
    iget-object p0, p0, Ldf;->a:[F

    const/4 v0, 0x0

    const v1, 0x3eb33333    # 0.35f

    aput v1, p0, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    aput v1, p0, v0

    return-void
.end method
