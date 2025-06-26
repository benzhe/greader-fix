.class public final Ljf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# instance fields
.field public final e:Lne6;


# direct methods
.method public constructor <init>(Lne6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ljf6;->e:Lne6;

    return-void
.end method


# virtual methods
.method public a(Lne6;Lod6;Ldg6;Lfe6;)Lde6;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lne6;",
            "Lod6;",
            "Ldg6<",
            "*>;",
            "Lfe6;",
            ")",
            "Lde6<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-interface {p4}, Lfe6;->value()Ljava/lang/Class;

    move-result-object v0

    .line 2
    new-instance v1, Ldg6;

    invoke-direct {v1, v0}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 3
    invoke-virtual {p1, v1}, Lne6;->a(Ldg6;)Laf6;

    move-result-object p1

    invoke-interface {p1}, Laf6;->a()Ljava/lang/Object;

    move-result-object p1

    .line 4
    instance-of v0, p1, Lde6;

    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lde6;

    goto :goto_2

    .line 6
    :cond_0
    instance-of v0, p1, Lee6;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Lee6;

    invoke-interface {p1, p2, p3}, Lee6;->b(Lod6;Ldg6;)Lde6;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_1
    instance-of v0, p1, Lae6;

    if-nez v0, :cond_3

    instance-of v1, p1, Lsd6;

    if-eqz v1, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p4, "Invalid attempt to bind an instance of "

    invoke-static {p4}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as a @JsonAdapter for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ldg6;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". @JsonAdapter value must be a TypeAdapter, TypeAdapterFactory, JsonSerializer or JsonDeserializer."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 11
    move-object v0, p1

    check-cast v0, Lae6;

    move-object v3, v0

    goto :goto_1

    :cond_4
    move-object v3, v1

    .line 12
    :goto_1
    instance-of v0, p1, Lsd6;

    if-eqz v0, :cond_5

    .line 13
    move-object v1, p1

    check-cast v1, Lsd6;

    :cond_5
    move-object v4, v1

    .line 14
    new-instance p1, Lsf6;

    const/4 v7, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lsf6;-><init>(Lae6;Lsd6;Lod6;Ldg6;Lee6;)V

    :goto_2
    if-eqz p1, :cond_6

    .line 15
    invoke-interface {p4}, Lfe6;->nullSafe()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    new-instance p2, Lce6;

    invoke-direct {p2, p1}, Lce6;-><init>(Lde6;)V

    move-object p1, p2

    :cond_6
    return-object p1
.end method

.method public b(Lod6;Ldg6;)Lde6;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lod6;",
            "Ldg6<",
            "TT;>;)",
            "Lde6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Ldg6;->a:Ljava/lang/Class;

    .line 2
    const-class v1, Lfe6;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lfe6;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Ljf6;->e:Lne6;

    invoke-virtual {p0, v1, p1, p2, v0}, Ljf6;->a(Lne6;Lod6;Ldg6;Lfe6;)Lde6;

    move-result-object p1

    return-object p1
.end method
