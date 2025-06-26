.class public Lj57$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj57;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lj57;


# direct methods
.method public constructor <init>(Lj57;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj57$a;->f:Lj57;

    iput p2, p0, Lj57$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj57$a;->f:Lj57;

    .line 2
    iget-object v0, v0, Lj57;->f:Ld87;

    .line 3
    invoke-virtual {v0}, Ld87;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lj57$a;->f:Lj57;

    .line 5
    iget-object v0, v0, Lj57;->f:Ld87;

    .line 6
    iget v1, p0, Lj57$a;->e:I

    invoke-virtual {v0, v1}, Ld87;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, p0, Lj57$a;->f:Lj57;

    .line 8
    iget-object v1, v1, Lj57;->e:Ld87$b;

    .line 9
    invoke-interface {v1, v0}, Ld87$b;->h(Ljava/lang/Throwable;)V

    .line 10
    iget-object v0, p0, Lj57$a;->f:Lj57;

    .line 11
    iget-object v0, v0, Lj57;->f:Ld87;

    .line 12
    invoke-virtual {v0}, Ld87;->close()V

    :goto_0
    return-void
.end method
