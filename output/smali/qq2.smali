.class public final synthetic Lqq2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# instance fields
.field public final a:Luc1$b;

.field public final b:I


# direct methods
.method public constructor <init>(Luc1$b;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqq2;->a:Luc1$b;

    iput p2, p0, Lqq2;->b:I

    return-void
.end method


# virtual methods
.method public final a(Le45;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lqq2;->a:Luc1$b;

    iget v1, p0, Lqq2;->b:I

    .line 1
    invoke-virtual {p1}, Le45;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lip3;

    .line 3
    invoke-virtual {v0}, Ls63$b;->j()Le83;

    move-result-object v0

    check-cast v0, Ls63;

    check-cast v0, Luc1;

    invoke-virtual {v0}, Lb53;->b()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lip3;->a([B)Lqq3;

    move-result-object p1

    .line 4
    iput v1, p1, Lqq3;->c:I

    .line 5
    invoke-virtual {p1}, Lqq3;->a()V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
