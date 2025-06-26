.class public Lmd$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final e:Led;

.field public final f:Lad$a;

.field public g:Z


# direct methods
.method public constructor <init>(Led;Lad$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmd$a;->g:Z

    .line 3
    iput-object p1, p0, Lmd$a;->e:Led;

    .line 4
    iput-object p2, p0, Lmd$a;->f:Lad$a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmd$a;->g:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmd$a;->e:Led;

    iget-object v1, p0, Lmd$a;->f:Lad$a;

    invoke-virtual {v0, v1}, Led;->d(Lad$a;)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lmd$a;->g:Z

    :cond_0
    return-void
.end method
