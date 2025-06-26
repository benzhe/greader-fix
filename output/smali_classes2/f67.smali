.class public abstract Lf67;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ll37;


# direct methods
.method public constructor <init>(Ll37;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf67;->e:Ll37;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lf67;->e:Ll37;

    invoke-virtual {v0}, Ll37;->b()Ll37;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lf67;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iget-object v1, p0, Lf67;->e:Ll37;

    invoke-virtual {v1, v0}, Ll37;->i(Ll37;)V

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lf67;->e:Ll37;

    invoke-virtual {v2, v0}, Ll37;->i(Ll37;)V

    throw v1
.end method
