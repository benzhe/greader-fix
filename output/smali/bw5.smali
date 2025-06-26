.class public final synthetic Lbw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Liw5;

.field public final b:Lj47;


# direct methods
.method public constructor <init>(Liw5;Lj47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw5;->a:Liw5;

    iput-object p2, p0, Lbw5;->b:Lj47;

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lbw5;->a:Liw5;

    iget-object v1, p0, Lbw5;->b:Lj47;

    .line 1
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf47;

    iget-object v0, v0, Liw5;->c:Lx27;

    invoke-virtual {p1, v1, v0}, Ly27;->h(Lj47;Lx27;)La37;

    move-result-object p1

    invoke-static {p1}, Lc50;->X(Ljava/lang/Object;)Le45;

    move-result-object p1

    return-object p1
.end method
