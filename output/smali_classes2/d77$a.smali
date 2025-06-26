.class public Ld77$a;
.super Lb77;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld77;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb77<",
        "Ld67;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ld77;


# direct methods
.method public constructor <init>(Ld77;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$a;->b:Ld77;

    invoke-direct {p0}, Lb77;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld77$a;->b:Ld77;

    .line 2
    iget-object v1, v0, Ld77;->e:Ld77$e;

    .line 3
    check-cast v1, Lx77;

    .line 4
    iget-object v1, v1, Lx77;->b:Lq77$u;

    iget-object v1, v1, Lq77$u;->i:Lq77;

    iget-object v1, v1, Lq77;->X:Lb77;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lb77;->c(Ljava/lang/Object;Z)V

    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld77$a;->b:Ld77;

    .line 2
    iget-object v1, v0, Ld77;->e:Ld77$e;

    .line 3
    check-cast v1, Lx77;

    .line 4
    iget-object v1, v1, Lx77;->b:Lq77$u;

    iget-object v1, v1, Lq77$u;->i:Lq77;

    iget-object v1, v1, Lq77;->X:Lb77;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lb77;->c(Ljava/lang/Object;Z)V

    return-void
.end method
