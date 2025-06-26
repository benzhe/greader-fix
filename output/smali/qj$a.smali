.class public final Lqj$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lwj;

.field public b:Lrj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lwj;->e:Lwj;

    iput-object v0, p0, Lqj$a;->a:Lwj;

    .line 3
    new-instance v0, Lrj;

    invoke-direct {v0}, Lrj;-><init>()V

    iput-object v0, p0, Lqj$a;->b:Lrj;

    return-void
.end method


# virtual methods
.method public a()Lqj;
    .locals 1

    .line 1
    new-instance v0, Lqj;

    invoke-direct {v0, p0}, Lqj;-><init>(Lqj$a;)V

    return-object v0
.end method
