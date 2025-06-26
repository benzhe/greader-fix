.class public final Lmh3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lth3;

.field public final b:Lhj3;

.field public c:Lrh3;

.field public d:Lih3;

.field public e:I

.field public f:I

.field public g:I

.field public h:Lqg3;

.field public i:Lqh3;


# direct methods
.method public constructor <init>(Lhj3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lth3;

    invoke-direct {v0}, Lth3;-><init>()V

    iput-object v0, p0, Lmh3;->a:Lth3;

    .line 3
    iput-object p1, p0, Lmh3;->b:Lhj3;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lmh3;->a:Lth3;

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lth3;->d:I

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, v0, Lth3;->r:J

    .line 4
    iput-boolean v1, v0, Lth3;->l:Z

    .line 5
    iput-boolean v1, v0, Lth3;->q:Z

    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lth3;->n:Lqh3;

    .line 7
    iput v1, p0, Lmh3;->e:I

    .line 8
    iput v1, p0, Lmh3;->g:I

    .line 9
    iput v1, p0, Lmh3;->f:I

    .line 10
    iput-object v2, p0, Lmh3;->h:Lqg3;

    .line 11
    iput-object v2, p0, Lmh3;->i:Lqh3;

    return-void
.end method
