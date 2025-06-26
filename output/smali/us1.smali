.class public final synthetic Lus1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lvs1;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lvs1;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus1;->e:Lvs1;

    iput-object p2, p0, Lus1;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lus1;->e:Lvs1;

    iget-object v1, p0, Lus1;->f:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lvs1;->c:Lls0;

    invoke-virtual {v0, v1}, Lls0;->a(Ljava/lang/String;)V

    return-void
.end method
