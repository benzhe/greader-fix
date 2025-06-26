.class public Lof6;
.super Lpf6$b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lde6;

.field public final synthetic g:Lod6;

.field public final synthetic h:Ldg6;

.field public final synthetic i:Z


# direct methods
.method public constructor <init>(Lpf6;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLde6;Lod6;Ldg6;Z)V
    .locals 0

    .line 1
    iput-object p5, p0, Lof6;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lof6;->e:Z

    iput-object p7, p0, Lof6;->f:Lde6;

    iput-object p8, p0, Lof6;->g:Lod6;

    iput-object p9, p0, Lof6;->h:Ldg6;

    iput-boolean p10, p0, Lof6;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lpf6$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Leg6;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lof6;->f:Lde6;

    invoke-virtual {v0, p1}, Lde6;->a(Leg6;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    iget-boolean v0, p0, Lof6;->i:Z

    if-nez v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lof6;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lgg6;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lof6;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lof6;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lof6;->f:Lde6;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ltf6;

    iget-object v1, p0, Lof6;->g:Lod6;

    iget-object v2, p0, Lof6;->f:Lde6;

    iget-object v3, p0, Lof6;->h:Ldg6;

    .line 4
    iget-object v3, v3, Ldg6;->b:Ljava/lang/reflect/Type;

    .line 5
    invoke-direct {v0, v1, v2, v3}, Ltf6;-><init>(Lod6;Lde6;Ljava/lang/reflect/Type;)V

    .line 6
    :goto_0
    invoke-virtual {v0, p1, p2}, Lde6;->b(Lgg6;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lpf6$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lof6;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
