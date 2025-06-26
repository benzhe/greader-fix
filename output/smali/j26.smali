.class public final synthetic Lj26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqc7;


# instance fields
.field public final a:Lo26;

.field public final b:Lqg6;


# direct methods
.method public constructor <init>(Lo26;Lqg6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj26;->a:Lo26;

    iput-object p2, p0, Lj26;->b:Lqg6;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj26;->a:Lo26;

    iget-object v1, p0, Lj26;->b:Lqg6;

    .line 1
    iput-object v1, v0, Lo26;->d:Lqg6;

    return-void
.end method
