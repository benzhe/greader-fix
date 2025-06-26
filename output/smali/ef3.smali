.class public final Lef3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lye3;


# direct methods
.method public constructor <init>(Lye3;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lef3;->f:Lye3;

    iput p2, p0, Lef3;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lef3;->f:Lye3;

    .line 2
    iget-object v0, v0, Lye3;->b:Lze3;

    .line 3
    check-cast v0, Lcv0;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
