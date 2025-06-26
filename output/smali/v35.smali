.class public Lv35;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk45;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lk45;

    invoke-direct {v0}, Lk45;-><init>()V

    iput-object v0, p0, Lv35;->a:Lk45;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lv35;->a:Lk45;

    .line 2
    iget-object v0, v0, Lk45;->a:Le55;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le55;->u(Ljava/lang/Object;)Z

    return-void
.end method
