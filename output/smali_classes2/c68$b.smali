.class public Lc68$b;
.super Lf68;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc68;->g(Ly68;Ljava/util/Map;)Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ll68$b;


# direct methods
.method public constructor <init>(Lc68;Ll68$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lc68$b;->b:Ll68$b;

    invoke-direct {p0}, Lf68;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ly68;JLm68;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lc68$b;->b:Ll68$b;

    invoke-virtual {p1, p2, p3, p4}, Ll68$b;->a(JLm68;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
