.class public final Lo18$a;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo18;->a(Lhn7;Lk18;Lel7;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lo18;

.field public final synthetic f:Lk18;

.field public final synthetic g:Lhn7;

.field public final synthetic h:Lel7;


# direct methods
.method public constructor <init>(Lo18;Lk18;Lhn7;Lel7;)V
    .locals 0

    iput-object p1, p0, Lo18$a;->e:Lo18;

    iput-object p2, p0, Lo18$a;->f:Lk18;

    iput-object p3, p0, Lo18$a;->g:Lhn7;

    iput-object p4, p0, Lo18$a;->h:Lel7;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lo18$a;->e:Lo18;

    iget-object v1, p0, Lo18$a;->f:Lk18;

    iget-object v2, p0, Lo18$a;->g:Lhn7;

    iget-object v3, p0, Lo18$a;->h:Lel7;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lo18;->b(Lk18;Lhn7;Lel7;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
