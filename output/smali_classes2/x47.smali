.class public final Lx47;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx47$d;,
        Lx47$c;,
        Lx47$b;
    }
.end annotation


# static fields
.field public static final d:Z

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx47;",
            ">;"
        }
    .end annotation
.end field

.field public static final f:Lx47;

.field public static final g:Lx47;

.field public static final h:Lx47;

.field public static final i:Lx47;

.field public static final j:Lx47;

.field public static final k:Lx47;

.field public static final l:Lx47;

.field public static final m:Lx47;

.field public static final n:Lx47;

.field public static final o:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Lx47;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Li47$i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$i<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final q:Li47$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li47$f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lx47$b;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const-string v0, "io.grpc.Status.failOnEqualsForTest"

    const-string v1, "false"

    .line 1
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lx47;->d:Z

    .line 2
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3
    invoke-static {}, Lx47$b;->values()[Lx47$b;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x11

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    .line 4
    iget v6, v4, Lx47$b;->e:I

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lx47;

    .line 6
    invoke-direct {v7, v4, v5, v5}, Lx47;-><init>(Lx47$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {v0, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lx47;

    if-nez v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Code value duplication between "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 9
    iget-object v2, v5, Lx47;->a:Lx47$b;

    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " & "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 12
    sput-object v0, Lx47;->e:Ljava/util/List;

    .line 13
    sget-object v0, Lx47$b;->g:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->f:Lx47;

    .line 14
    sget-object v0, Lx47$b;->h:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->g:Lx47;

    .line 15
    sget-object v0, Lx47$b;->i:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->h:Lx47;

    .line 16
    sget-object v0, Lx47$b;->j:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 17
    sget-object v0, Lx47$b;->k:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->i:Lx47;

    .line 18
    sget-object v0, Lx47$b;->l:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 19
    sget-object v0, Lx47$b;->m:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 20
    sget-object v0, Lx47$b;->n:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->j:Lx47;

    .line 21
    sget-object v0, Lx47$b;->w:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->k:Lx47;

    .line 22
    sget-object v0, Lx47$b;->o:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->l:Lx47;

    .line 23
    sget-object v0, Lx47$b;->p:Lx47$b;

    .line 24
    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 25
    sget-object v0, Lx47$b;->q:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 26
    sget-object v0, Lx47$b;->r:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 27
    sget-object v0, Lx47$b;->s:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 28
    sget-object v0, Lx47$b;->t:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->m:Lx47;

    .line 29
    sget-object v0, Lx47$b;->u:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    move-result-object v0

    sput-object v0, Lx47;->n:Lx47;

    .line 30
    sget-object v0, Lx47$b;->v:Lx47$b;

    invoke-virtual {v0}, Lx47$b;->i()Lx47;

    .line 31
    new-instance v0, Lx47$c;

    invoke-direct {v0, v5}, Lx47$c;-><init>(Lx47$a;)V

    const-string v1, "grpc-status"

    .line 32
    invoke-static {v1, v2, v0}, Li47$f;->b(Ljava/lang/String;ZLi47$i;)Li47$f;

    move-result-object v0

    sput-object v0, Lx47;->o:Li47$f;

    .line 33
    new-instance v0, Lx47$d;

    invoke-direct {v0, v5}, Lx47$d;-><init>(Lx47$a;)V

    sput-object v0, Lx47;->p:Li47$i;

    const-string v1, "grpc-message"

    .line 34
    invoke-static {v1, v2, v0}, Li47$f;->b(Ljava/lang/String;ZLi47$i;)Li47$f;

    move-result-object v0

    sput-object v0, Lx47;->q:Li47$f;

    return-void
.end method

.method public constructor <init>(Lx47$b;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "code"

    .line 2
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lx47$b;

    iput-object p1, p0, Lx47;->a:Lx47$b;

    .line 3
    iput-object p2, p0, Lx47;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lx47;->c:Ljava/lang/Throwable;

    return-void
.end method

.method public static c(Lx47;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lx47;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lx47;->a:Lx47$b;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx47;->a:Lx47$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lx47;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(I)Lx47;
    .locals 3

    if-ltz p0, :cond_1

    .line 1
    sget-object v0, Lx47;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lx47;

    return-object p0

    .line 3
    :cond_1
    :goto_0
    sget-object v0, Lx47;->h:Lx47;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lx47;->h(Ljava/lang/String;)Lx47;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/Throwable;)Lx47;
    .locals 2

    const-string v0, "t"

    .line 1
    invoke-static {p0, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Ljava/lang/Throwable;

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    instance-of v1, v0, Ly47;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ly47;

    .line 4
    iget-object p0, v0, Ly47;->e:Lx47;

    return-object p0

    .line 5
    :cond_0
    instance-of v1, v0, Lz47;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lz47;

    .line 7
    iget-object p0, v0, Lz47;->e:Lx47;

    return-object p0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lx47;->h:Lx47;

    invoke-virtual {v0, p0}, Lx47;->g(Ljava/lang/Throwable;)Lx47;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Lz47;
    .locals 2

    .line 1
    new-instance v0, Lz47;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, p0, v1}, Lz47;-><init>(Lx47;Li47;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lx47;
    .locals 5

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lx47;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lx47;

    iget-object v1, p0, Lx47;->a:Lx47$b;

    iget-object v2, p0, Lx47;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lx47;-><init>(Lx47$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    .line 3
    :cond_1
    new-instance v0, Lx47;

    iget-object v1, p0, Lx47;->a:Lx47$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lx47;->b:Ljava/lang/String;

    const-string v4, "\n"

    invoke-static {v2, v3, v4, p1}, Ljo;->t(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lx47;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lx47;-><init>(Lx47$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Z
    .locals 2

    .line 1
    sget-object v0, Lx47$b;->g:Lx47$b;

    iget-object v1, p0, Lx47;->a:Lx47$b;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(Ljava/lang/Throwable;)Lx47;
    .locals 3

    .line 1
    iget-object v0, p0, Lx47;->c:Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lx47;

    iget-object v1, p0, Lx47;->a:Lx47$b;

    iget-object v2, p0, Lx47;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Lx47;-><init>(Lx47$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lx47;
    .locals 3

    .line 1
    iget-object v0, p0, Lx47;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lx47;

    iget-object v1, p0, Lx47;->a:Lx47$b;

    iget-object v2, p0, Lx47;->c:Ljava/lang/Throwable;

    invoke-direct {v0, v1, p1, v2}, Lx47;-><init>(Lx47$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lx47;->a:Lx47$b;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code"

    .line 3
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 4
    iget-object v1, p0, Lx47;->b:Ljava/lang/String;

    const-string v2, "description"

    .line 5
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 6
    iget-object v1, p0, Lx47;->c:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 7
    sget-object v2, Lrd5;->a:Ljava/lang/Object;

    .line 8
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 9
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 10
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "cause"

    .line 11
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 12
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
