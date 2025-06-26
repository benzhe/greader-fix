.class public final synthetic Luh2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lph2;

.field public final b:Lni2;


# direct methods
.method public constructor <init>(Lph2;Lni2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh2;->a:Lph2;

    iput-object p2, p0, Luh2;->b:Lni2;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 6

    iget-object v0, p0, Luh2;->a:Lph2;

    iget-object v1, p0, Luh2;->b:Lni2;

    check-cast p1, Lnn2;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 2
    iget-object v2, p1, Lnn2;->a:Lcn2;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lnn2;->b:Lon2;

    if-eqz v2, :cond_0

    .line 3
    check-cast v2, Lwh2;

    .line 4
    invoke-static {}, Lrp3;->y()Lrp3$b;

    move-result-object v3

    .line 5
    invoke-static {}, Lrp3$a;->A()Lrp3$a$a;

    move-result-object v4

    sget-object v5, Lrp3$c;->g:Lrp3$c;

    .line 6
    invoke-virtual {v4, v5}, Lrp3$a$a;->q(Lrp3$c;)Lrp3$a$a;

    .line 7
    invoke-static {}, Lrp3$d;->z()Lrp3$d$a;

    move-result-object v5

    invoke-virtual {v4, v5}, Lrp3$a$a;->p(Lrp3$d$a;)Lrp3$a$a;

    .line 8
    invoke-virtual {v3, v4}, Lrp3$b;->p(Lrp3$a$a;)Lrp3$b;

    .line 9
    invoke-virtual {v3}, Ls63$b;->j()Le83;

    move-result-object v3

    check-cast v3, Ls63;

    check-cast v3, Lrp3;

    .line 10
    iget-object v4, p1, Lnn2;->a:Lcn2;

    iget-object v4, v4, Lcn2;->a:Lh71;

    .line 11
    iget-object v4, v4, Lh71;->f:Lmd1;

    .line 12
    new-instance v5, Lrd1;

    invoke-direct {v5, v3}, Lrd1;-><init>(Lrp3;)V

    invoke-virtual {v4, v5}, Lxd1;->D0(Lzd1;)V

    .line 13
    iget-object p1, p1, Lnn2;->a:Lcn2;

    iget-object v2, v2, Lwh2;->b:Lpi2;

    invoke-virtual {v0, p1, v2, v1}, Lph2;->c(Lcn2;Lpi2;Lni2;)Law2;

    move-result-object p1

    return-object p1

    .line 14
    :cond_0
    new-instance p1, Lbu1;

    sget-object v0, Ldm2;->e:Ldm2;

    const-string v1, "Empty prefetch"

    invoke-direct {p1, v0, v1}, Lbu1;-><init>(Ldm2;Ljava/lang/String;)V

    throw p1
.end method
