.class public Ld77$d$a$a;
.super Lp67;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld77$d$a;->k(Lz57;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lz57;

.field public final synthetic b:Ld77$d$a;


# direct methods
.method public constructor <init>(Ld77$d$a;Lz57;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld77$d$a$a;->b:Ld77$d$a;

    iput-object p2, p0, Ld77$d$a$a;->a:Lz57;

    invoke-direct {p0}, Lp67;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lx47;Li47;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld77$d$a$a;->b:Ld77$d$a;

    iget-object v0, v0, Ld77$d$a;->b:Ld77$d;

    .line 2
    iget-object v0, v0, Ld77$d;->b:Lq57;

    .line 3
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lq57;->a(Z)V

    .line 4
    iget-object v0, p0, Ld77$d$a$a;->a:Lz57;

    .line 5
    invoke-interface {v0, p1, p2}, Lz57;->b(Lx47;Li47;)V

    return-void
.end method

.method public e(Lx47;Lz57$a;Li47;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ld77$d$a$a;->b:Ld77$d$a;

    iget-object v0, v0, Ld77$d$a;->b:Ld77$d;

    .line 2
    iget-object v0, v0, Ld77$d;->b:Lq57;

    .line 3
    invoke-virtual {p1}, Lx47;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Lq57;->a(Z)V

    .line 4
    iget-object v0, p0, Ld77$d$a$a;->a:Lz57;

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lz57;->e(Lx47;Lz57$a;Li47;)V

    return-void
.end method
