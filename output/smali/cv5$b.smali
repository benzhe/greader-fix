.class public final Lcv5$b;
.super Lgj6$a;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcv5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6$a<",
        "Lcv5;",
        "Lcv5$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcv5;->B()Lcv5;

    move-result-object v0

    invoke-direct {p0, v0}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method

.method public constructor <init>(Lcv5$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcv5;->B()Lcv5;

    move-result-object p1

    invoke-direct {p0, p1}, Lgj6$a;-><init>(Lgj6;)V

    return-void
.end method


# virtual methods
.method public r(Z)Lcv5$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgj6$a;->o()V

    .line 2
    iget-object v0, p0, Lgj6$a;->f:Lgj6;

    check-cast v0, Lcv5;

    invoke-static {v0, p1}, Lcv5;->C(Lcv5;Z)V

    return-object p0
.end method
