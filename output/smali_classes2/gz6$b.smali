.class public Lgz6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgz6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Landroid/graphics/drawable/Drawable;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:Landroid/graphics/drawable/Drawable;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ltz6;

.field public k:Landroid/graphics/BitmapFactory$Options;

.field public l:I

.field public m:Z

.field public n:Ljava/lang/Object;

.field public o:Lm07;

.field public p:Lm07;

.field public q:Ld07;

.field public r:Landroid/os/Handler;

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgz6$b;->a:I

    .line 3
    iput v0, p0, Lgz6$b;->b:I

    .line 4
    iput v0, p0, Lgz6$b;->c:I

    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lgz6$b;->d:Landroid/graphics/drawable/Drawable;

    .line 6
    iput-object v1, p0, Lgz6$b;->e:Landroid/graphics/drawable/Drawable;

    .line 7
    iput-object v1, p0, Lgz6$b;->f:Landroid/graphics/drawable/Drawable;

    .line 8
    iput-boolean v0, p0, Lgz6$b;->g:Z

    .line 9
    iput-boolean v0, p0, Lgz6$b;->h:Z

    .line 10
    iput-boolean v0, p0, Lgz6$b;->i:Z

    .line 11
    sget-object v2, Ltz6;->g:Ltz6;

    iput-object v2, p0, Lgz6$b;->j:Ltz6;

    .line 12
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v2, p0, Lgz6$b;->k:Landroid/graphics/BitmapFactory$Options;

    .line 13
    iput v0, p0, Lgz6$b;->l:I

    .line 14
    iput-boolean v0, p0, Lgz6$b;->m:Z

    .line 15
    iput-object v1, p0, Lgz6$b;->n:Ljava/lang/Object;

    .line 16
    iput-object v1, p0, Lgz6$b;->o:Lm07;

    .line 17
    iput-object v1, p0, Lgz6$b;->p:Lm07;

    .line 18
    new-instance v2, Ld07;

    invoke-direct {v2}, Ld07;-><init>()V

    .line 19
    iput-object v2, p0, Lgz6$b;->q:Ld07;

    .line 20
    iput-object v1, p0, Lgz6$b;->r:Landroid/os/Handler;

    .line 21
    iput-boolean v0, p0, Lgz6$b;->s:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap$Config;)Lgz6$b;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lgz6$b;->k:Landroid/graphics/BitmapFactory$Options;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "bitmapConfig can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lgz6;
    .locals 2

    .line 1
    new-instance v0, Lgz6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lgz6;-><init>(Lgz6$b;Lgz6$a;)V

    return-object v0
.end method
