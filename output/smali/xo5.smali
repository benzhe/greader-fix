.class public final Lxo5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Leu5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[~*/\\[\\]]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lxo5;->b:Ljava/util/regex/Pattern;

    .line 2
    sget-object v0, Leu5;->f:Leu5;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Leu5;->g:Leu5;

    goto :goto_0

    :cond_0
    new-instance v0, Leu5;

    invoke-direct {v0, p1}, Leu5;-><init>(Ljava/util/List;)V

    move-object p1, v0

    .line 3
    :goto_0
    iput-object p1, p0, Lxo5;->a:Leu5;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lxo5;
    .locals 3

    const-string v0, "Provided field path must not be null."

    .line 1
    invoke-static {p0, v0}, Lc50;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lxo5;->b:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Use FieldPath.of() for field names containing \'~*/[]\'."

    .line 4
    invoke-static {v0, v2, v1}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "\\."

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lxo5;->b([Ljava/lang/String;)Lxo5;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 6
    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid field path ("

    const-string v2, "). Paths must not be empty, begin with \'.\', end with \'.\', or contain \'..\'"

    invoke-static {v1, p0, v2}, Ljo;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs b([Ljava/lang/String;)Lxo5;
    .locals 5

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Invalid field path. Provided path must not be empty."

    invoke-static {v0, v3, v2}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 3
    aget-object v2, p0, v0

    if-eqz v2, :cond_1

    aget-object v2, p0, v0

    .line 4
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const-string v3, "Invalid field name at argument "

    invoke-static {v3}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Field names must not be null or empty."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v2, v3, v4}, Lc50;->q(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_2
    new-instance v0, Lxo5;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lxo5;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 1
    const-class v0, Lxo5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lxo5;

    .line 3
    iget-object v0, p0, Lxo5;->a:Leu5;

    iget-object p1, p1, Lxo5;->a:Leu5;

    invoke-virtual {v0, p1}, Lvt5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lxo5;->a:Leu5;

    invoke-virtual {v0}, Lvt5;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lxo5;->a:Leu5;

    .line 2
    invoke-virtual {v0}, Leu5;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
