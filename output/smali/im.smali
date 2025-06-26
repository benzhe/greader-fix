.class public final Lim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhm;


# instance fields
.field public final a:Llg;

.field public final b:Lhg;


# direct methods
.method public constructor <init>(Llg;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lim;->a:Llg;

    .line 3
    new-instance v0, Lim$a;

    invoke-direct {v0, p0, p1}, Lim$a;-><init>(Lim;Llg;)V

    iput-object v0, p0, Lim;->b:Lhg;

    return-void
.end method
