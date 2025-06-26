.class public final synthetic Lvr1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldp3;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvr1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lyp3$a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvr1;->a:Ljava/lang/String;

    .line 2
    iget-boolean v1, p1, Ls63$b;->g:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ls63$b;->o()V

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p1, Ls63$b;->g:Z

    .line 5
    :cond_0
    iget-object p1, p1, Ls63$b;->f:Ls63;

    check-cast p1, Lyp3;

    invoke-static {p1, v0}, Lyp3;->F(Lyp3;Ljava/lang/String;)V

    return-void
.end method
