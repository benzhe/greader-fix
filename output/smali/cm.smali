.class public final Lcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbm;


# instance fields
.field public final a:Llg;

.field public final b:Lhg;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcm;->a:Llg;

    .line 3
    new-instance v0, Lcm$a;

    invoke-direct {v0, p0, p1}, Lcm$a;-><init>(Lcm;Llg;)V

    iput-object v0, p0, Lcm;->b:Lhg;

    return-void
.end method
