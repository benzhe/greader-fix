.class public Lhr5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lgr5;

.field public final b:Leu5;

.field public final c:Z


# direct methods
.method public constructor <init>(Lgr5;Leu5;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lhr5;->a:Lgr5;

    .line 3
    iput-object p2, p0, Lhr5;->b:Leu5;

    .line 4
    iput-boolean p3, p0, Lhr5;->c:Z

    return-void
.end method

.method public constructor <init>(Lgr5;Leu5;ZLfr5;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lhr5;->a:Lgr5;

    .line 7
    iput-object p2, p0, Lhr5;->b:Leu5;

    .line 8
    iput-boolean p3, p0, Lhr5;->c:Z

    return-void
.end method


# virtual methods
.method public a(Leu5;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lhr5;->a:Lgr5;

    .line 2
    iget-object v0, v0, Lgr5;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Leu5;Lav5;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhr5;->a:Lgr5;

    .line 2
    iget-object v0, v0, Lgr5;->c:Ljava/util/ArrayList;

    new-instance v1, Lpu5;

    invoke-direct {v1, p1, p2}, Lpu5;-><init>(Leu5;Lav5;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 3

    .line 1
    iget-object v0, p0, Lhr5;->b:Leu5;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lvt5;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, " (found in field "

    .line 2
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lhr5;->b:Leu5;

    .line 3
    invoke-virtual {v1}, Leu5;->l()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    .line 5
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid data. "

    invoke-static {v2, p1, v0}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public d()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lhr5;->a:Lgr5;

    .line 2
    iget-object v0, v0, Lgr5;->a:Lir5;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lhr5;->a:Lgr5;

    .line 5
    iget-object v1, v1, Lgr5;->a:Lir5;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Unexpected case for UserDataSource: %s"

    .line 7
    invoke-static {v1, v0}, Lbx5;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return v3

    :cond_2
    return v1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lhr5;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "__"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Document fields cannot begin and end with \"__\""

    .line 5
    invoke-virtual {p0, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "Document fields must not be empty"

    .line 6
    invoke-virtual {p0, p1}, Lhr5;->c(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
