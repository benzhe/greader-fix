.class public final Lb67$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb67;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lv27;

.field public c:Ljava/lang/String;

.field public d:Lu37;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown-authority"

    .line 2
    iput-object v0, p0, Lb67$a;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lv27;->b:Lv27;

    iput-object v0, p0, Lb67$a;->b:Lv27;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lb67$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lb67$a;

    .line 3
    iget-object v0, p0, Lb67$a;->a:Ljava/lang/String;

    iget-object v2, p1, Lb67$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb67$a;->b:Lv27;

    iget-object v2, p1, Lb67$a;->b:Lv27;

    .line 4
    invoke-virtual {v0, v2}, Lv27;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb67$a;->c:Ljava/lang/String;

    iget-object v2, p1, Lb67$a;->c:Ljava/lang/String;

    .line 5
    invoke-static {v0, v2}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lb67$a;->d:Lu37;

    iget-object p1, p1, Lb67$a;->d:Lu37;

    .line 6
    invoke-static {v0, p1}, Lc50;->T(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lb67$a;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lb67$a;->b:Lv27;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lb67$a;->c:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lb67$a;->d:Lu37;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
