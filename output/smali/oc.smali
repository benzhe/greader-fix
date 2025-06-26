.class public Loc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldd;


# instance fields
.field public e:Led;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Loc;->e:Led;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lad;
    .locals 1

    .line 1
    iget-object v0, p0, Loc;->e:Led;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Led;

    invoke-direct {v0, p0}, Led;-><init>(Ldd;)V

    iput-object v0, p0, Loc;->e:Led;

    .line 3
    :cond_0
    iget-object v0, p0, Loc;->e:Led;

    return-object v0
.end method
