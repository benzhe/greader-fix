.class public final Lxj;
.super Lck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxj$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lxj$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lck$a;->a:Ljava/util/UUID;

    iget-object v1, p1, Lck$a;->b:Ldm;

    iget-object p1, p1, Lck$a;->c:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lck;-><init>(Ljava/util/UUID;Ldm;Ljava/util/Set;)V

    return-void
.end method
