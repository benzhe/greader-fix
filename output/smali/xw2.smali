.class public Lxw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyw2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PrimitiveT:",
        "Ljava/lang/Object;",
        "KeyProtoT::",
        "Le83;",
        ">",
        "Ljava/lang/Object;",
        "Lyw2<",
        "TPrimitiveT;>;"
    }
.end annotation


# instance fields
.field public final a:Lzw2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lzw2<",
            "TKeyProtoT;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TPrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzw2;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzw2<",
            "TKeyProtoT;>;",
            "Ljava/lang/Class<",
            "TPrimitiveT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lzw2;->d()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Void;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Given internalKeyMananger %s does not support primitive class %s"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    :goto_0
    iput-object p1, p0, Lxw2;->a:Lzw2;

    .line 8
    iput-object p2, p0, Lxw2;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Le83;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TKeyProtoT;)TPrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Void;

    iget-object v1, p0, Lxw2;->b:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lxw2;->a:Lzw2;

    invoke-virtual {v0, p1}, Lzw2;->f(Le83;)V

    .line 3
    iget-object v0, p0, Lxw2;->a:Lzw2;

    iget-object v1, p0, Lxw2;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lzw2;->b(Le83;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create a primitive for Void"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(Lk53;)Le83;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lxw2;->a:Lzw2;

    invoke-virtual {v0}, Lzw2;->e()Lbx2;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lbx2;->c(Lk53;)Le83;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lbx2;->a(Le83;)V

    .line 4
    invoke-virtual {v0, p1}, Lbx2;->b(Le83;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le83;
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Failures parsing proto of type "

    iget-object v2, p0, Lxw2;->a:Lzw2;

    .line 6
    invoke-virtual {v2}, Lzw2;->e()Lbx2;

    move-result-object v2

    .line 7
    iget-object v2, v2, Lbx2;->a:Ljava/lang/Class;

    .line 8
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c(Lk53;)Lg23;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lxw2;->a:Lzw2;

    invoke-virtual {v0}, Lzw2;->e()Lbx2;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lbx2;->c(Lk53;)Le83;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lbx2;->a(Le83;)V

    .line 4
    invoke-virtual {v0, p1}, Lbx2;->b(Le83;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le83;

    .line 5
    invoke-static {}, Lg23;->E()Lg23$b;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lxw2;->a:Lzw2;

    invoke-virtual {v1}, Lzw2;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    iget-boolean v2, v0, Ls63$b;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 9
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 10
    :cond_0
    iget-object v2, v0, Ls63$b;->f:Ls63;

    check-cast v2, Lg23;

    invoke-static {v2, v1}, Lg23;->z(Lg23;Ljava/lang/String;)V

    .line 11
    invoke-interface {p1}, Le83;->f()Lk53;

    move-result-object p1

    .line 12
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 14
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 15
    :cond_1
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lg23;

    invoke-static {v1, p1}, Lg23;->y(Lg23;Lk53;)V

    .line 16
    iget-object p1, p0, Lxw2;->a:Lzw2;

    .line 17
    invoke-virtual {p1}, Lzw2;->c()Lg23$a;

    move-result-object p1

    .line 18
    iget-boolean v1, v0, Ls63$b;->g:Z

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v0}, Ls63$b;->o()V

    .line 20
    iput-boolean v3, v0, Ls63$b;->g:Z

    .line 21
    :cond_2
    iget-object v1, v0, Ls63$b;->f:Ls63;

    check-cast v1, Lg23;

    invoke-static {v1, p1}, Lg23;->x(Lg23;Lg23$a;)V

    .line 22
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object p1

    check-cast p1, Ls63;

    check-cast p1, Lg23;
    :try_end_0
    .catch Le73; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 23
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpected proto"

    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
