.class public final Lokhttp3/Headers$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/Headers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final namesAndValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 3

    const-string v0, "line"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p1, v0, v1, v1, v2}, Lco7;->k(Ljava/lang/CharSequence;CIZI)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0

    :cond_1
    const-string v0, "Unexpected header: "

    .line 3
    invoke-static {v0, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-static {v0, p1}, Lokhttp3/Headers$Companion;->access$checkName(Lokhttp3/Headers$Companion;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, p2, p1}, Lokhttp3/Headers$Companion;->access$checkValue(Lokhttp3/Headers$Companion;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final add(Ljava/lang/String;Ljava/time/Instant;)Lokhttp3/Headers$Builder;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/util/Date;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final add(Ljava/lang/String;Ljava/util/Date;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, Lokhttp3/internal/http/DatesKt;->toHttpDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final addAll(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;
    .locals 4

    const-string v0, "headers"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lokhttp3/Headers;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final addLenient$okhttp(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 6

    const-string v0, "line"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x3a

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 1
    invoke-static {p1, v0, v1, v2, v3}, Lco7;->k(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 2
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v2}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, ""

    if-ne v2, v0, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, v3, p1}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_0
    return-object p0
.end method

.method public final addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-static {p2}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-static {v0, p1}, Lokhttp3/Headers$Companion;->access$checkName(Lokhttp3/Headers$Companion;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final build()Lokhttp3/Headers;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Headers;

    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lokhttp3/Headers;-><init>([Ljava/lang/String;Lgm7;)V

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-static {v0, v2}, Len7;->b(II)Lbn7;

    move-result-object v0

    invoke-static {v0, v1}, Len7;->c(Lbn7;I)Lbn7;

    move-result-object v0

    .line 2
    iget v1, v0, Lbn7;->e:I

    .line 3
    iget v2, v0, Lbn7;->f:I

    .line 4
    iget v0, v0, Lbn7;->g:I

    if-ltz v0, :cond_0

    if-gt v1, v2, :cond_2

    goto :goto_0

    :cond_0
    if-lt v1, v2, :cond_2

    .line 5
    :goto_0
    iget-object v3, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {p1, v3, v4}, Lco7;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-object p1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    add-int/2addr v1, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    if-eq v1, v2, :cond_2

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getNamesAndValues$okhttp()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    return-object v0
.end method

.method public final removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lco7;->e(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lokhttp3/Headers$Builder;->namesAndValues:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x2

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lokhttp3/Headers;->Companion:Lokhttp3/Headers$Companion;

    invoke-static {v0, p1}, Lokhttp3/Headers$Companion;->access$checkName(Lokhttp3/Headers$Companion;Ljava/lang/String;)V

    .line 4
    invoke-static {v0, p2, p1}, Lokhttp3/Headers$Companion;->access$checkValue(Lokhttp3/Headers$Companion;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 6
    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->addLenient$okhttp(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method

.method public final set(Ljava/lang/String;Ljava/time/Instant;)Lokhttp3/Headers$Builder;
    .locals 3
    .annotation build Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, p1, v0}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/util/Date;)Lokhttp3/Headers$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final set(Ljava/lang/String;Ljava/util/Date;)Lokhttp3/Headers$Builder;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lokhttp3/internal/http/DatesKt;->toHttpDateString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    return-object p0
.end method
