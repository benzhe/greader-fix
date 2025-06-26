.class public final Lnj3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lnj3;


# instance fields
.field public final a:I

.field public final b:[Lkj3;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnj3;

    const/4 v1, 0x0

    new-array v1, v1, [Lkj3;

    invoke-direct {v0, v1}, Lnj3;-><init>([Lkj3;)V

    sput-object v0, Lnj3;->d:Lnj3;

    return-void
.end method

.method public varargs constructor <init>([Lkj3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lnj3;->b:[Lkj3;

    .line 3
    array-length p1, p1

    iput p1, p0, Lnj3;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lkj3;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lnj3;->a:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lnj3;->b:[Lkj3;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 1
    const-class v2, Lnj3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    check-cast p1, Lnj3;

    .line 3
    iget v2, p0, Lnj3;->a:I

    iget v3, p1, Lnj3;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lnj3;->b:[Lkj3;

    iget-object p1, p1, Lnj3;->b:[Lkj3;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lnj3;->c:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lnj3;->b:[Lkj3;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lnj3;->c:I

    .line 3
    :cond_0
    iget v0, p0, Lnj3;->c:I

    return v0
.end method
