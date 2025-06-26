.class public final Lzy$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Lb00;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb00<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/common/Feature;


# direct methods
.method public constructor <init>(Lb00;Lcom/google/android/gms/common/Feature;Ljz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzy$b;->a:Lb00;

    .line 3
    iput-object p2, p0, Lzy$b;->b:Lcom/google/android/gms/common/Feature;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    instance-of v1, p1, Lzy$b;

    if-eqz v1, :cond_0

    .line 2
    check-cast p1, Lzy$b;

    .line 3
    iget-object v1, p0, Lzy$b;->a:Lb00;

    iget-object v2, p1, Lzy$b;->a:Lb00;

    invoke-static {v1, v2}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzy$b;->b:Lcom/google/android/gms/common/Feature;

    iget-object p1, p1, Lzy$b;->b:Lcom/google/android/gms/common/Feature;

    .line 4
    invoke-static {v1, p1}, Lbi;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lzy$b;->a:Lb00;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lzy$b;->b:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lw00;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lw00;-><init>(Ljava/lang/Object;Lw10;)V

    .line 2
    iget-object v1, p0, Lzy$b;->a:Lb00;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lw00;->a(Ljava/lang/String;Ljava/lang/Object;)Lw00;

    iget-object v1, p0, Lzy$b;->b:Lcom/google/android/gms/common/Feature;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lw00;->a(Ljava/lang/String;Ljava/lang/Object;)Lw00;

    invoke-virtual {v0}, Lw00;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
