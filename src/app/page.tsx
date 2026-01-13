"use client";

import { motion } from "framer-motion";
import { Button } from "@/components/ui/button";
import { Card, CardContent } from "@/components/ui/card";
import { Rocket, Sparkles, Globe } from "lucide-react";

export default function Home() {
  return (
    <main className="min-h-screen bg-gradient-to-br from-black via-zinc-900 to-zinc-800 text-white">
      {/* Hero Section */}
      <section className="flex flex-col items-center justify-center text-center px-6 py-32">
        <motion.h1
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ duration: 0.8 }}
          className="text-5xl md:text-7xl font-extrabold tracking-tight"
        >
          Build Something <span className="text-indigo-400">Cool</span>
        </motion.h1>

        <motion.p
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.2, duration: 0.8 }}
          className="mt-6 max-w-2xl text-lg text-zinc-300"
        >
          A modern Next.js website with smooth animations, clean UI, and
          production-ready structure.
        </motion.p>

        <motion.div
          initial={{ opacity: 0, y: 20 }}
          animate={{ opacity: 1, y: 0 }}
          transition={{ delay: 0.4, duration: 0.8 }}
          className="mt-10 flex gap-4"
        >
          <Button size="lg" className="rounded-2xl hover:cursor-pointer">Get Started</Button>
          <Button size="lg" variant="outline" className="rounded-2xl text-black hover:cursor-pointer">
            View GitHub
          </Button>
        </motion.div>
      </section>

      {/* Features */}
      <section className="px-6 pb-32 max-w-6xl mx-auto grid md:grid-cols-3 gap-6">
        {[{
          icon: <Rocket className="w-8 h-8 text-indigo-400" />,
          title: "Fast",
          desc: "Built with Next.js App Router and optimized performance."
        }, {
          icon: <Sparkles className="w-8 h-8 text-indigo-400" />,
          title: "Beautiful",
          desc: "Minimal design with Tailwind CSS and animations."
        }, {
          icon: <Globe className="w-8 h-8 text-indigo-400" />,
          title: "Scalable",
          desc: "Production-ready structure you can grow with."
        }].map((f, i) => (
          <motion.div
            key={i}
            initial={{ opacity: 0, y: 20 }}
            whileInView={{ opacity: 1, y: 0 }}
            viewport={{ once: true }}
            transition={{ delay: i * 0.15 }}
          >
            <Card className="bg-zinc-900 border-zinc-800 rounded-2xl shadow-lg">
              <CardContent className="p-8">
                {f.icon}
                <h3 className="mt-4 text-xl font-semibold">{f.title}</h3>
                <p className="mt-2 text-zinc-400">{f.desc}</p>
              </CardContent>
            </Card>
          </motion.div>
        ))}
      </section>

      {/* Footer */}
      <footer className="border-t border-zinc-800 py-8 text-center text-zinc-500">
        © {new Date().getFullYear()} Cool Next.js Site. Built with ❤️
      </footer>
    </main>
  );
}
