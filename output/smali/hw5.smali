.class public final synthetic Lhw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liw5;

.field public final f:Lf47;


# direct methods
.method public constructor <init>(Liw5;Lf47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhw5;->e:Liw5;

    iput-object p2, p0, Lhw5;->f:Lf47;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lhw5;->e:Liw5;

    iget-object v1, p0, Lhw5;->f:Lf47;

    .line 1
    invoke-virtual {v0, v1}, Liw5;->b(Lf47;)V

    return-void
.end method
